# Cinematic Site Components Changelog

## [0.2.1] - 2026-06-09

### Changed

- **Service Area Map example sharpened into a dispatch board**: Reworked `service-area-map.html` from a generic service-radius sketch into a RidgeLine mobile glass dispatch board for Denver metro visitors. The module now shows a branded live route panel, neighborhood and road labels, five numbered service stops, job-ticket copy, ETAs, response metrics, and concrete cards for Wadsworth dispatch, I-70 fleet work, Aurora calibration, Lakewood repair, and a DTC quote window. Mobile typography was tightened so the large explanatory headline and use-case section keep readable line breaks on narrow screens.

## [0.2.0] - 2026-06-09

### Added

- **Service Area Map cinematic module**: Added `service-area-map.html`, a new scroll-driven module for local service sites, delivery zones, franchise pages, tourism routes, event recaps, and logistics pages. The module shows a stylized coverage map in a dark framed panel while a route draws across neighborhood zones, an orange pin travels along the route, a progress meter fills, and five step cards update for dispatch, north corridor, core service area, outer coverage, and booking. It includes a reduced-motion fallback that shows the full route, final pin position, full meter, and all step cards without scroll-linked movement. The module is linked from the gallery index as module 31 under Scroll-Driven.
- **First source intake batch**: Added distilled source notes under `_sources/` for Codrops scroll-driven SVG maps, SVG mask transitions, on-scroll SVG filter distortion, hover motion intro animation, WebGL rotating image galleries, GSAP ScrollTrigger, and animations.dev motion theory. Updated `_notes/source-log.md` and `_notes/pattern-backlog.md` so the built module and backlogged candidates are scored and traceable.

### Fixed

- **Catalog preview motion cleanup**: Updated the macOS Dock mini preview in `index.html` to scale items with `transform` and a targeted transition instead of animating width/height through `transition: all`, keeping the gallery aligned with the new quality gate.

## [0.1.1] - 2026-06-09

### Fixed

- **FlareSolverr fallback instructions use the existing container**: Updated the cinematic animation intake workflow so agents use the already-provisioned local `flaresolverr` Docker container on `http://localhost:8191` instead of creating a duplicate container. The Firecrawl-first workflow is unchanged; FlareSolverr remains a fallback only for public source pages that return Cloudflare challenge content.

## [0.1.0] - 2026-06-09

### Added

- **Quality-gated animation intake**: Added a curation system for expanding the cinematic animation library without collecting random effects. Future agents now have `QUALITY-GATE.md` for scoring candidates, `INTAKE-WORKFLOW.md` for Firecrawl-first source intake with FlareSolverr only as a public-page fallback, `_sources/` for distilled source notes, and `_notes/` for the pattern backlog and source log. Accepted modules must score high on visual quality, UX usefulness, reusability, performance, and implementation cleanliness before they become standalone `.html` demos.
