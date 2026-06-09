param(
  [int]$Port = 8035,
  [switch]$OpenFirewall,
  [switch]$Stop
)

$ErrorActionPreference = "Stop"
$Root = Split-Path -Parent $MyInvocation.MyCommand.Path

function Get-TailscaleIp {
  $cmd = Get-Command tailscale -ErrorAction SilentlyContinue
  if (-not $cmd) {
    $fallback = "C:\Program Files\Tailscale\tailscale.exe"
    if (Test-Path -LiteralPath $fallback) {
      $cmd = Get-Item -LiteralPath $fallback
    }
  }
  if (-not $cmd) {
    throw "tailscale.exe was not found. Install or start Tailscale first."
  }

  $exe = if ($cmd.Source) { $cmd.Source } else { $cmd.FullName }
  $ip = (& $exe ip -4 | Select-Object -First 1).Trim()
  if (-not $ip) {
    throw "No Tailscale IPv4 address found. Make sure Tailscale is running and signed in."
  }
  return $ip
}

function Stop-Server($Address, $ServerPort) {
  $listeners = Get-NetTCPConnection -LocalAddress $Address -LocalPort $ServerPort -State Listen -ErrorAction SilentlyContinue
  foreach ($listener in $listeners) {
    if ($listener.OwningProcess) {
      Stop-Process -Id $listener.OwningProcess -Force -ErrorAction SilentlyContinue
      Write-Host "Stopped server process $($listener.OwningProcess) on $Address`:$ServerPort"
    }
  }
}

$tailscaleIp = Get-TailscaleIp

if ($Stop) {
  Stop-Server $tailscaleIp $Port
  exit 0
}

if ($OpenFirewall) {
  $ruleName = "Cinematic Site Components Tailscale $Port"
  try {
    if (-not (Get-NetFirewallRule -DisplayName $ruleName -ErrorAction SilentlyContinue)) {
      New-NetFirewallRule -DisplayName $ruleName -Direction Inbound -Action Allow -Protocol TCP -LocalPort $Port -Profile Any | Out-Null
    }
    Write-Host "Firewall rule ready: $ruleName"
  } catch {
    Write-Warning "Could not create the firewall rule. Re-run this script from an elevated PowerShell with -OpenFirewall, or allow TCP port $Port manually."
  }
}

$existing = Get-NetTCPConnection -LocalAddress $tailscaleIp -LocalPort $Port -State Listen -ErrorAction SilentlyContinue
if ($existing) {
  Write-Host "Already serving:"
  Write-Host "  http://$tailscaleIp`:$Port/index.html"
  exit 0
}

$args = @("-m", "http.server", "$Port", "--bind", $tailscaleIp, "--directory", $Root)
$process = Start-Process -FilePath python -ArgumentList $args -WindowStyle Hidden -PassThru
Start-Sleep -Seconds 2

try {
  $response = Invoke-WebRequest -UseBasicParsing -Uri "http://$tailscaleIp`:$Port/index.html" -TimeoutSec 5
  if ($response.StatusCode -ne 200) {
    throw "HTTP status $($response.StatusCode)"
  }
} catch {
  Stop-Process -Id $process.Id -Force -ErrorAction SilentlyContinue
  throw "Started Python process $($process.Id), but the preview did not respond: $($_.Exception.Message)"
}

Write-Host "Serving cinematic-site-components over Tailscale:"
Write-Host "  http://$tailscaleIp`:$Port/index.html"
Write-Host ""
Write-Host "Phone requirements: Tailscale app connected to the same tailnet, and this Windows machine left awake."
Write-Host "Stop it with:"
Write-Host "  powershell -ExecutionPolicy Bypass -File .\serve-over-tailscale.ps1 -Stop"
