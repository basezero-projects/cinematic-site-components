<!--
GENERATED FROM CLAUDE.md. Do not edit AGENTS.md directly.
Edit CLAUDE.md, then run: powershell.exe -NoProfile -ExecutionPolicy Bypass -File scripts/sync-agent-instructions.ps1
-->

# Codex Adapter Notes

This file mirrors `CLAUDE.md` so Codex follows the same project rules as Claude Code.

- Treat the instructions below as canonical for this folder.
- When a rule names a Claude-specific tool, use the closest Codex tool available in the current session.
- When a rule says to use Claude subagents, use Codex multi-agent/subagent tooling when available; otherwise do the work inline and keep context small.
- When a rule names `TodoWrite`, use Codex plan/checklist tooling.
- Do not edit this generated file by hand.

---

@../../../CLAUDE.md
@../../CLAUDE.md

# Cinematic Site Modules

A library of 39 cinematic website modules. Each is a standalone single-file HTML demo. No build step, no frameworks.

## What's Here

- `*.html` — 39 standalone cinematic module demos (just open in browser)
- `index.html` — Visual hub page with animated mini-demos for each module
- `QUALITY-GATE.md` — Required scoring gate for any new module candidate
- `INTAKE-WORKFLOW.md` — Firecrawl-first source intake workflow with FlareSolverr as fallback only
- `_sources/` — Distilled source notes, not raw scraped dumps
- `_notes/` — Pattern backlog and source log

## Quality Bar

Do not add modules because they are trendy or easy to scrape. New candidates must pass `QUALITY-GATE.md`: they need a real purpose, a high score, clear source/license notes, reduced-motion behavior, and enough reuse value for SYVR client sites. Use Firecrawl for public source intake. Use FlareSolverr only when a public page is blocked by a challenge page; do not use it for login walls, paywalls, captcha-heavy sites, or private content.

## Module Categories

- **Scroll-Driven** (16) — Text mask, sticky stack, zoom parallax, horizontal scroll, sticky cards, SVG draw, curtain reveal, split screen, color shift, service area map, SVG mask chapters, scroll filter distortion, WebGL rotating gallery, curved path motion, 3D scroll text, 3D camera tour
- **Cursor & Hover** (9) — Cursor-reactive, hover intro grid, accordion, cursor reveal, image trail, flip cards, magnetic grid, spotlight borders, drag-to-pan
- **Click & Tap** (7) — View transitions, particle button, odometer, coverflow, dynamic island, dock nav, spatial product hotspots
- **Ambient & Auto** (7) — Text scramble, marquee, mesh gradient, circular text, glitch, typewriter, gradient stroke

## Requirements

- A browser (for previewing)
- That's it. No npm, no build, no frameworks.

## Attribution

Created by Jay from RoboLabs. Learn more at [RoboNuggets](https://robonuggets.com)

## Session Summaries

**Session brain.** End of session: write to `D:\Work\App_Projects\All_Projects\brain\websites\sessions\YYYY-MM-DD_HHMM_<slug>.md`, overwrite `brain\websites\STATE.md` (Right now / Last session / Next up / Blockers), and append to `brain\websites\solutions.md` only if you solved something non-trivial. See root `CLAUDE.md` for the full workflow.
