# Intake Workflow

Use this workflow when building out the cinematic animation knowledge base.

## 1. Find sources

Prefer sources with real craft value:

- Codrops interaction articles and demos.
- GSAP showcase, docs, and well-explained demos.
- Emil Kowalski / animations.dev style interaction reasoning.
- High-quality portfolio case studies with inspectable behavior.
- Strong WebGL, Three.js, SVG, CSS, or scroll-animation breakdowns.

Avoid low-signal listicles, scraped CodePen dumps, "top 100 effects" posts, and anything where the source cannot explain why the animation exists.

## 2. Scrape with Firecrawl first

Local Firecrawl lives at `D:/Work/App_Projects/All_Projects/firecrawl` and serves `http://localhost:3002`.

Start it:

```powershell
docker info *> $null
if ($LASTEXITCODE -ne 0) { Start-Process "C:/Program Files/Docker/Docker/Docker Desktop.exe" -WindowStyle Hidden }
Set-Location "D:/Work/App_Projects/All_Projects/firecrawl"
docker compose up -d
```

Scrape:

```powershell
$body = @{
  url = "https://example.com"
  formats = @("markdown")
} | ConvertTo-Json

Invoke-RestMethod `
  -Method Post `
  -Uri "http://localhost:3002/v1/scrape" `
  -Headers @{ Authorization = "Bearer local" } `
  -ContentType "application/json" `
  -Body $body
```

Save useful markdown summaries under `_sources/<source-name>/<slug>.md`. Do not save raw page dumps unless the page is genuinely valuable.

## 3. Use the existing FlareSolverr container only as a fallback

FlareSolverr is for public pages that show a Cloudflare challenge to normal Firecrawl. It is not a license to scrape login walls, paywalls, captcha-heavy sites, or private content.

Use it only when:

- Firecrawl returns a Cloudflare/challenge page.
- The target content is public.
- The source is worth the extra cost.

Local FlareSolverr is already provisioned as the Docker container `flaresolverr` and exposed at `http://localhost:8191`. Do not create a second container.

Check or start the existing container:

```powershell
docker ps -a --filter "name=^/flaresolverr$" --format "{{.Names}} {{.Status}} {{.Ports}}"
$running = docker inspect -f "{{.State.Running}}" flaresolverr 2>$null
if ($running -ne "true") { docker start flaresolverr }
```

Request example:

```powershell
$body = @{
  cmd = "request.get"
  url = "https://example.com"
  maxTimeout = 60000
} | ConvertTo-Json

Invoke-RestMethod `
  -Method Post `
  -Uri "http://localhost:8191/v1" `
  -ContentType "application/json" `
  -Body $body
```

If FlareSolverr still gets junk, log it in `_notes/source-log.md` and move on.

## 4. Distill before building

For each source, extract:

- What the motion does.
- Why it works.
- Which section type it fits.
- Which section type it would hurt.
- Dependencies and browser APIs.
- Mobile behavior.
- Reduced-motion fallback.
- License and attribution.

Then score it with `QUALITY-GATE.md`.

## 5. Build only the winners

Only candidates scoring `8-10` should become local `.html` modules. Backlog `6-7` candidates in `_notes/pattern-backlog.md`. Reject everything else.

When a module is built:

1. Create a standalone `.html` demo.
2. Add it to the right category in `README.md`.
3. Add behavior notes to `IMPLEMENTATION-REFERENCE.md`.
4. Add a card or preview to `index.html`.
5. Add a source-log entry.
6. Verify in browser at desktop and mobile widths.
7. Verify the first, middle, and final animation states. For click/tap effects, verify the reverse or close path. For scroll effects, verify the full scroll range. For cursor/hover effects, verify touch or no-hover behavior.
