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

### 2026-06-12 - WebGL material reveal

Date: 2026-06-12
Source: Codrops
URL: https://tympanus.net/codrops/2025/10/08/how-to-animate-webgl-shaders-with-gsap-ripples-reveals-and-dynamic-blur-effects/
Scrape method: Firecrawl
Candidate pattern: Shader uniforms blend two material texture states while scroll and pointer position drive a controlled inspection reveal
Score: 8/10
Decision: Build
Good for: Product materials, restoration proof, coating/finish claims, fabrication details, food or ingredient macro sections, premium before-and-after surfaces
Avoid for: Flat colour layers, generic shader distortion, low-asset pages, trust-heavy pages where a still comparison is clearer, or any page without a real surface to inspect
Motion risk: Shader work can become noise if the two layers do not contain visible detail or if distortion hides the final state
Reduced motion fallback: Static split material comparison with the raw layer, reveal edge, finished surface, and proof frame copy all visible
Dependencies: Three.js CDN, custom shader material, generated CanvasTexture layers, vanilla scroll and pointer mapping
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: Built as `webgl-material-reveal.html`, it gives future sites a concrete WebGL shader pattern that solves a product/material comparison job instead of adding another gallery or decorative distortion.

### 2026-06-09 - 3D camera tour

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/11/19/how-to-build-cinematic-3d-scroll-experiences-with-gsap/
Scrape method: Firecrawl
Candidate pattern: Scroll acts like a camera director through a staged 3D product or venue scene
Score: 8/10
Decision: Build
Good for: Product construction, venue walkthroughs, architecture, hardware, gallery installations, immersive case-study artifacts
Avoid for: Pages with no inspectable subject, generic floating objects, low-performance landing pages, or cases where a still image explains the subject better
Motion risk: Camera movement can become spectacle if the object and copy are not linked to specific inspection beats
Reduced motion fallback: Static product/venue chapter board with the important angles summarized as readable cards
Dependencies: Three.js CDN, vanilla scroll mapping, procedural geometry
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: Built as `scroll-camera-tour.html`, it gives future sites a concrete 3D camera-path pattern without needing model assets or a framework.

### 2026-06-09 - Spatial product hotspots

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/03/06/on-scroll-3d-stack-motion-effect/ and https://tympanus.net/codrops/2025/05/07/on-scroll-3d-carousel/
Scrape method: Firecrawl
Candidate pattern: A lightweight CSS 3D object tilts and expands through tap/click hotspots
Score: 8/10
Decision: Build
Good for: Product detail sections, installation artifacts, device features, package callouts, service objects, evidence cards
Avoid for: Decorative dots, vague feature labels, too many callouts, hover-only critical content, or products with no real parts to explain
Motion risk: Hotspots become gimmicks if they do not point to visible product details
Reduced motion fallback: Static layered product with tap/keyboard buttons and all copy reachable
Dependencies: CSS 3D transforms and vanilla JavaScript
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: Built as `spatial-product-hotspots.html`, it covers a practical 3D product-disclosure job without the cost of WebGL.

### 2026-06-09 - Reactive 3D image tube

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2026/02/17/reactive-depth-building-a-scroll-driven-3d-image-tube-with-react-three-fiber/
Scrape method: Firecrawl
Candidate pattern: Scroll-driven cylindrical image field for travelling through a collection
Score: 7/10
Decision: Backlog
Good for: Visual archives, lookbooks, portfolio collections, campaign galleries, media-heavy venue pages
Avoid for: Low-asset pages, card lists where every item has equal importance, and sites already using coverflow or rotating gallery modules
Motion risk: Image tubes can become novelty loops and hide collection hierarchy
Reduced motion fallback: Static image grid or ordered collection list
Dependencies: Source used React Three Fiber; future local build would need CSS 3D or Three.js
License/attribution: Source noted for pattern research only
Why it belongs here: Strong 3D reference, but it overlaps existing gallery modules until a sharper collection story is needed.

### 2026-06-09 - 3D infinite carousel with reactive gradients

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/11/11/building-a-3d-infinite-carousel-with-reactive-background-gradients/
Scrape method: Firecrawl
Candidate pattern: 3D card carousel where the background colour field responds to the active item
Score: 6/10
Decision: Backlog
Good for: Featured products, music or event cards, campaign cards, premium testimonials, media covers
Avoid for: Generic carousels, infinite loops with unclear position, and pages where `coverflow.html` already fits
Motion risk: Reactive gradients can turn into decoration if they do not improve active-card focus
Reduced motion fallback: Static featured-card row or selected-card detail panel
Dependencies: Source uses modern animation stack; local implementation could be CSS 3D plus vanilla JS
License/attribution: Source noted for pattern research only
Why it belongs here: Useful active-item staging reference, but not distinct enough for a new module yet.

### 2026-06-09 - Responsive WebGL text

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/06/05/how-to-create-responsive-and-seo-friendly-webgl-text/
Scrape method: Firecrawl
Candidate pattern: DOM text remains accessible while WebGL mirrors or enhances it with shader treatment
Score: 7/10
Decision: Backlog
Good for: Editorial heroes, music/event pages, product campaigns, identity sections where text is the main visual asset
Avoid for: Normal headings, long copy, and cases where CSS text effects are enough
Motion risk: Canvas text can break accessibility and mobile line wrapping if the DOM and WebGL layers diverge
Reduced motion fallback: Real DOM text remains visible with shader layer disabled
Dependencies: WebGL or Three.js, font loading, DOM-to-canvas synchronization
License/attribution: Source noted for pattern research only
Why it belongs here: Valuable technical reference for future shader text, but not built until there is a specific text treatment worth the cost.

### 2026-06-09 - Dreamy GPGPU particles

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/12/19/crafting-a-dreamy-particle-effect-with-three-js-and-gpgpu/
Scrape method: Firecrawl
Candidate pattern: GPU particle field for soft atmospheric motion
Score: 5/10 as a module, useful as reference
Decision: Reject as a standalone module
Good for: Rare music, event, art, or product atmosphere when particles reveal or support a real subject
Avoid for: Background filler, trust-heavy pages, and any page where the particle field is the whole idea
Motion risk: Particle spam is a common junk-animation failure mode
Reduced motion fallback: Static image or no particle layer
Dependencies: Three.js, GPGPU simulation, shader materials
License/attribution: Source noted for technical reference only
Why it belongs here: Good performance reference, but not a module unless it gets tied to an actual reveal or product artifact.

### 2026-06-09 - Staggered 3D grid animations

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/10/16/staggered-3d-grid-animations-with-scroll-triggered-effects/
Scrape method: Firecrawl
Candidate pattern: Scroll-triggered grid items enter with 3D stagger and perspective
Score: 5/10 as a standalone module
Decision: Reject for now
Good for: Portfolio indexes, product grids, and image collections when the cards themselves are strong
Avoid for: Another generic card-grid entrance module, text-heavy grids, or pages with weak assets
Motion risk: Too many elements moving at once hurts scanability
Reduced motion fallback: Static grid with no 3D entrance
Dependencies: CSS/GSAP-style stagger concepts
License/attribution: Source noted for craft reference only
Why it belongs here: Useful for future polish, but too close to generic entrance animation to add as a standalone example.

### 2026-06-09 - Responsive curved path motion

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/12/17/building-responsive-scroll-triggered-curved-path-animations-with-gsap/
Scrape method: Firecrawl
Candidate pattern: A meaningful object travels along a responsive curved SVG path while proof cards activate in sequence
Score: 9/10
Decision: Build
Good for: Product flows, quote funnels, service journeys, case-study timelines, fulfillment routes, launch stories, process sections
Avoid for: Pages with no real sequence, decorative route lines, dense copy sections, or situations where every content card needs equal attention
Motion risk: If the moving object has no content meaning, the path becomes decoration; token and path can drift if implemented in separate coordinate systems
Reduced motion fallback: Show the full path, final token position, readable cards, and full progress state without scroll-linked movement
Dependencies: Vanilla SVG and JavaScript in the local module; source pattern used GSAP MotionPath concepts
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: Built as `curved-path-motion.html`, it gives future sites a concrete way to connect scattered proof points into one sequenced route instead of adding another generic reveal.

### 2026-06-09 - 3D scroll-driven text cylinder

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/11/04/creating-3d-scroll-driven-text-animations-with-css-and-gsap/
Scrape method: Firecrawl
Candidate pattern: Short brand or product vocabulary rotates through CSS 3D depth while explanatory copy syncs to the active word
Score: 8/10
Decision: Build
Good for: Brand pillars, product attributes, capability spectra, short editorial chapters, campaign vocabulary sections
Avoid for: Buzzword clouds, long lists, body-copy replacement, navigation, or fast spinning type users need to read
Motion risk: 3D text can crop or blur on small screens, and a weak word list feels gimmicky
Reduced motion fallback: Display the words as readable static chips with the sequence copy visible
Dependencies: CSS 3D transforms and vanilla JavaScript in the local module
License/attribution: Original local implementation inspired by public pattern research; no source code copied
Why it belongs here: Built as `scroll-3d-text.html`, it turns a small vocabulary set into a sequenced section with a real explanation for each active word.

### 2026-06-09 - WebGL shader ripples, reveals, and blur

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/10/08/how-to-animate-webgl-shaders-with-gsap-ripples-reveals-and-dynamic-blur-effects/
Scrape method: Firecrawl
Candidate pattern: Shader uniforms driven by click, drag, or scroll for ripples, texture blends, dynamic blur, and image reveals
Score: 6/10
Decision: Backlog
Good for: Music, event, editorial, premium galleries, product material reveals, high-quality visual campaigns
Avoid for: Trust-heavy service pages, low-asset sites, and simple image reveals that CSS can handle
Motion risk: Shader effects can look like noisy distortion if they do not reveal real content; canvas fallback and performance checks are mandatory
Reduced motion fallback: Static image or simple opacity/clip reveal
Dependencies: Three.js or WebGL, GSAP, shader code, image preloading
License/attribution: Source noted for pattern research only
Why it belongs here: Strong reference material, but the next local module needs a specific image-treatment job before this is built.

### 2026-06-09 - Layered image grid zoom

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/10/29/building-a-layered-zoom-scroll-effect-with-gsap-scrollsmoother-and-scrolltrigger/
Scrape method: Firecrawl
Candidate pattern: Deconstructed image grid, split text, masked central image, and depth zoom on scroll
Score: 6/10
Decision: Backlog
Good for: Campaign intros, editorial image stories, portfolio launches, product imagery with strong art direction
Avoid for: Weak image sets, mobile-first service pages, or cases already covered by `zoom-parallax.html`
Motion risk: Duplicates the existing zoom module unless it adds a sharper use case; split text and grids can crop badly on phones
Reduced motion fallback: Static image grid or simple hero image with final copy visible
Dependencies: GSAP, ScrollTrigger, ScrollSmoother concepts
License/attribution: Source noted for pattern research only
Why it belongs here: Good depth-study reference, but not promoted yet because it overlaps the current Layered Zoom Parallax module.

### 2026-06-09 - GSAP tips article

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2025/09/03/7-must-know-gsap-animation-tips-for-creative-developers/
Scrape method: Firecrawl
Candidate pattern: General GSAP craft techniques, including text masking and timeline hygiene
Score: 5/10 as a module, useful as a reference
Decision: Reject as a standalone module
Good for: Refining text reveals, masked copy, and future GSAP timelines
Avoid for: Building a sampler page or adding a module without one specific effect
Motion risk: Technique lists can encourage disconnected demo snippets
Reduced motion fallback: Depends on the future module using the technique
Dependencies: GSAP concepts
License/attribution: Source noted for reference only
Why it belongs here: It informs craft decisions, but it is not itself a cinematic module candidate.

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
Decision: Build
Good for: Product chapter pages, portfolio case studies, hospitality, editorial stories
Avoid for: Weak image sets, basic local-service pages, content-heavy pages
Motion risk: Can duplicate existing reveal modules unless the use case is sharper
Reduced motion fallback: Static images with instant or short opacity transitions
Dependencies: GSAP, ScrollTrigger, SVG masks
License/attribution: Source noted for pattern research only
Why it belongs here: Built as `svg-mask-chapters.html`, a product/editorial chapter module where the SVG mask acts as the page turn instead of a generic reveal.

### 2026-06-09 - On-scroll SVG filter distortion

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2023/07/05/on-scroll-svg-filter-effect/
Scrape method: Firecrawl
Candidate pattern: Scroll-linked SVG turbulence mask distortion
Score: 7/10
Decision: Build
Good for: Experimental brands, event pages, music, premium product imagery, editorial intros
Avoid for: Trust-heavy service sites and pages where image clarity matters
Motion risk: Turbulence effects can look cheap or hurt performance if overused
Reduced motion fallback: Clean clip or opacity reveal with no filter distortion
Dependencies: GSAP, ScrollTrigger, SVG filters
License/attribution: Source noted for pattern research only
Why it belongs here: Built as `scroll-filter-distortion.html`, a restrained image-treatment module for event, music, editorial, and high-impact visual intros.

### 2026-06-09 - Hover motion intro grid

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/05/29/hover-motion-intro-animation/
Scrape method: Firecrawl
Candidate pattern: Pointer-reactive grid that transitions into a full intro
Score: 7/10
Decision: Build
Good for: Creative studios, portfolio intros, product campaign pages
Avoid for: Mobile-first service pages and critical navigation
Motion risk: Desktop hover dependency and high visual energy
Reduced motion fallback: Static grid with direct click/tap transition
Dependencies: GSAP, pointer tracking, image grid
License/attribution: Source noted for pattern research only
Why it belongs here: Built as `hover-intro-grid.html`, with a pointer-reactive desktop grid plus tap/focus controls so the pattern works beyond hover-only browsing.

### 2026-06-09 - WebGL rotating image gallery

Date: 2026-06-09
Source: Codrops
URL: https://tympanus.net/codrops/2024/12/03/how-to-create-a-webgl-rotating-image-gallery-using-ogl-and-glsl-shaders/
Scrape method: Firecrawl
Candidate pattern: Shader-based image planes that rotate with scroll
Score: 6/10
Decision: Build
Good for: High-end galleries, lookbooks, art, architecture, portfolio showcases
Avoid for: Most client service pages, low-asset pages, performance-sensitive pages
Motion risk: WebGL setup and mobile performance cost
Reduced motion fallback: Static or simple horizontal gallery
Dependencies: OGL or Three.js, GLSL shaders, image preloading
License/attribution: Source noted for pattern research only
Why it belongs here: Built as `webgl-rotating-gallery.html`, using raw WebGL texture planes, scroll-controlled rotation, and a static fallback for reduced motion or missing WebGL.
