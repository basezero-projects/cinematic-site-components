# Cinematic Site Components Changelog

## [0.4.4] - 2026-06-09

### Fixed

- **Targeted broken-animation fixes**: `view-transitions.html` now uses the browser View Transitions API for a real shared-element morph from the clicked product swatch into the detail image, with a 680ms geometry transition instead of an instant overlay pop. `kinetic-marquee.html` now runs its marquee rows at roughly half the previous pace and dampens scroll acceleration so the text bands feel ambient instead of frantic. `cursor-reveal.html` now uses an actual grayscale-to-lit image reveal with a visible circular lens, default motion, mouse, wheel, and touch handling instead of only exposing a flat green circle. `svg-mask-chapters.html` keeps the chapter tabs inside the right-hand panel below the progress bar, so the "Ceramic body / Light study / Room context" controls no longer scroll across the pinned image and copy.

## [0.4.3] - 2026-06-09

### Fixed

- **Frame-by-frame SYVR taste pass**: Reworked the older standalone animation modules so the first viewport shows the actual specimen instead of only a title card. Compact intro heights now reveal the effect area on desktop and phone for cursor, card, scroll, text, counter, button, dock, glitch, gradient, mesh, marquee, and transition examples. `horizontal-scroll.html` no longer drops into empty pinned frames on desktop; its horizontal track is driven by the section's real scroll position and keeps visible cards through every sampled frame while mobile stays stacked. `image-trail.html` now shows real preview images immediately and auto-seeds trail pops on desktop and touch. `curtain-reveal.html` now shows the split curtain and reveal state in the sampled frames. `svg-draw.html` now includes a faint guide path so the scroll-drawn route reads before progress begins, and `circular-text.html` raises the spinning badge into the first viewport. Removed SYVR hard-gate copy tells from the touched examples, including slash-numbered section labels, `Step 01` labels, and em-dash copy.

## [0.4.2] - 2026-06-09

### Fixed

- **Full animation QA pass fixes**: Audited all 35 standalone modules in Chromium on desktop and mobile, then fixed the broken or weak examples found in the pass. `kinetic-marquee.html` no longer creates horizontal page overflow and now keeps repeated marquee text visible inside clipped tracks on narrow screens. `horizontal-scroll.html` keeps the cinematic horizontal scroll on desktop but switches to a vertical card stack on mobile so phone users do not land on an empty pinned frame. `image-trail.html` now uses actual image cards instead of plain colour blocks and adds touch/autoplay trail behavior so the module demonstrates itself on phones. `magnetic-grid.html` now supports touch movement and an automatic coarse-pointer force point so the grid visibly repels on mobile. `dynamic-island.html` now previews its expanded state briefly on load so the morphing behavior is obvious without guessing where to tap.

## [0.4.1] - 2026-06-09

### Added

- **Tailscale phone preview helper**: Added `serve-over-tailscale.ps1` so the static animation gallery can be viewed from an iPhone or other tailnet device without a build step. The script finds the Windows machine's Tailscale IPv4 address, starts Python's static file server against the module folder on port `8035`, prints the phone URL for `index.html`, supports `-Stop`, and can attempt an inbound firewall rule with `-OpenFirewall` when run from an elevated PowerShell. `README.md` now documents the phone preview workflow and the requirement to keep the Windows machine awake.

## [0.4.0] - 2026-06-09

### Added

- **Built examples for the remaining scraped animation candidates**: Added four standalone modules from the Firecrawl intake backlog and linked them from `index.html`. Module 32, `svg-mask-chapters.html`, shows fullscreen product/editorial chapters revealed through an expanding SVG mask. Module 33, `scroll-filter-distortion.html`, uses a restrained SVG turbulence displacement filter that bends a high-impact image during scroll and resolves back to clarity. Module 34, `hover-intro-grid.html`, turns a pointer-reactive project grid into a tap-friendly intro panel for portfolio, campaign, and studio sites. Module 35, `webgl-rotating-gallery.html`, renders a rotating WebGL gallery with generated texture planes, scroll-controlled rotation, and a static fallback for reduced motion or missing WebGL.

## [0.2.3] - 2026-06-09

### Added

- **Service Area Map example bank**: Added a "Same motion, different route story" section to `service-area-map.html` so the route-sheet effect is easier to understand beyond the auto-glass demo. The page now includes four grounded route examples for auto glass, HVAC service, fence/handyman work, and courier/event crews, each with a small paper-map sketch and concrete work notes that show how the same scroll-drawn route can prove local coverage without fake telemetry.

## [0.2.2] - 2026-06-09

### Changed

- **Service Area Map rebuilt with syvr-taste**: Reworked `service-area-map.html` from a dark fake-live dispatch dashboard into a grounded service-area route sheet. The module now opens with a forest-green shop-wall hero, a paper route-sheet map, actual Denver metro town labels, lettered route stops, a moving service pin, and plain work notes for Wheat Ridge, Commerce City, Aurora, Lakewood, and DTC. It removes fake job IDs, fake times, numbered stop chips, live status dots, response metrics, dashboard language, and cyan tech styling. The `syvr-taste` grep gate reports `ALL CLEAR` with no hard fails or warnings.

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
