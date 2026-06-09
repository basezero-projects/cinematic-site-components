# Source Log

Track every source that influenced this library.

## Template

```text
Date:
Source:
URL:
Scrape method: Firecrawl | FlareSolverr | Manual review
Candidate pattern:
Score:
Decision: Build | Backlog | Reject
Good for:
Avoid for:
Motion risk:
Reduced motion fallback:
Dependencies:
License/attribution:
Why it belongs here:
```

## Entries

### 2026-06-09 - Service-area map route narrative

Date: 2026-06-09
Source: Codrops, GSAP docs
URL: https://tympanus.net/codrops/2026/05/21/creating-scroll-driven-svg-map-animations-with-gsap/ and https://gsap.com/docs/v3/Plugins/ScrollTrigger/
Scrape method: Firecrawl
Candidate pattern: Scroll-driven SVG route sheet with marker, town list, and synced service notes
Score: 9/10
Decision: Build
Good for: Local service areas, mobile service routes, delivery routes, franchise coverage, tourism paths, event recaps, logistics pages
Avoid for: Dense content pages, sites with no geographic/service-area story, pages where geographic accuracy cannot be verified
Motion risk: Scroll-linked map movement can become hard to read if too many regions animate at once
Reduced motion fallback: Show full route, final pin position, all step cards, and full progress meter
Dependencies: GSAP and ScrollTrigger CDN, matching existing repo pattern
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: It is cinematic and useful. The built module now uses a practical shop-base route sheet so service coverage becomes local proof instead of fake telemetry or decoration. The page also includes variant examples for auto glass, HVAC, fence/handyman, and courier/event routes so future agents understand how to adapt the effect.

### 2026-06-09 - SVG mask chapter transitions

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2026/03/11/svg-mask-transitions-on-scroll-with-gsap-and-scrolltrigger/
Scrape method: Firecrawl
Candidate pattern: Fullscreen image chapter reveals through SVG masks
Score: 7/10
Decision: Backlog
Good for: Product chapter pages, portfolio case studies, hospitality, editorial stories
Avoid for: Weak image sets, basic local-service pages, content-heavy pages
Motion risk: Can duplicate existing reveal modules unless the use case is sharper
Reduced motion fallback: Static images with instant or short opacity transitions
Dependencies: GSAP, ScrollTrigger, SVG masks
License/attribution: Source noted for pattern research only
Why it belongs here: Promising, but needs a more distinct local module concept before build.

### 2026-06-09 - On-scroll SVG filter distortion

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2023/07/05/on-scroll-svg-filter-effect/
Scrape method: Firecrawl
Candidate pattern: Scroll-linked SVG turbulence mask distortion
Score: 7/10
Decision: Backlog
Good for: Experimental brands, event pages, music, premium product imagery, editorial intros
Avoid for: Trust-heavy service sites and pages where image clarity matters
Motion risk: Turbulence effects can look cheap or hurt performance if overused
Reduced motion fallback: Clean clip or opacity reveal with no filter distortion
Dependencies: GSAP, ScrollTrigger, SVG filters
License/attribution: Source noted for pattern research only
Why it belongs here: Distinctive image treatment, but too niche to build before stronger general-purpose modules.

### 2026-06-09 - Hover motion intro grid

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/05/29/hover-motion-intro-animation/
Scrape method: Firecrawl
Candidate pattern: Pointer-reactive grid that transitions into a full intro
Score: 7/10
Decision: Backlog
Good for: Creative studios, portfolio intros, product campaign pages
Avoid for: Mobile-first service pages and critical navigation
Motion risk: Desktop hover dependency and high visual energy
Reduced motion fallback: Static grid with direct click/tap transition
Dependencies: GSAP, pointer tracking, image grid
License/attribution: Source noted for pattern research only
Why it belongs here: Strong idea, but it needs a careful touch fallback before becoming a local module.

### 2026-06-09 - WebGL rotating image gallery

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/12/03/how-to-create-a-webgl-rotating-image-gallery-using-ogl-and-glsl-shaders/
Scrape method: Firecrawl
Candidate pattern: Shader-based image planes that rotate with scroll
Score: 6/10
Decision: Backlog
Good for: High-end galleries, lookbooks, art, architecture, portfolio showcases
Avoid for: Most client service pages, low-asset pages, performance-sensitive pages
Motion risk: WebGL setup and mobile performance cost
Reduced motion fallback: Static or simple horizontal gallery
Dependencies: OGL or Three.js, GLSL shaders, image preloading
License/attribution: Source noted for pattern research only
Why it belongs here: Visually strong, but should wait for a dedicated WebGL pass.
