# Pattern Backlog

Candidates that looked promising during intake. Built candidates stay here as a record of why they were promoted.

## Template

```text
Pattern:
Source:
Score:
Why not built yet:
What would make it worth building:
Best fit:
Risk:
```

## Built From Backlog

### Responsive curved path motion

Pattern: A meaningful object travels along a responsive curved SVG path through proof points
Source: https://tympanus.net/codrops/2025/12/17/building-responsive-scroll-triggered-curved-path-animations-with-gsap/
Score: 9/10
Status: Built as `curved-path-motion.html`
Why built: It gives service, product, quote, and case-study pages a reusable way to connect scattered proof points into a visible sequence.
Best fit: Product flows, quote funnels, service journeys, case-study timelines, fulfillment routes.
Risk: If the moving object does not mean anything, the route reads as decorative motion.

### 3D scroll-driven text cylinder

Pattern: Short vocabulary rotates through CSS 3D depth while synced copy explains each active word
Source: https://tympanus.net/codrops/2025/11/04/creating-3d-scroll-driven-text-animations-with-css-and-gsap/
Score: 8/10
Status: Built as `scroll-3d-text.html`
Why built: It turns brand pillars or product attributes into a sequenced argument instead of a flat list of buzzwords.
Best fit: Brand pillars, product attributes, capability spectra, short editorial chapters.
Risk: Long word lists, fast rotation, or weak vocabulary make the effect feel gimmicky.

### SVG mask chapter transitions

Pattern: Fullscreen image chapter reveals through SVG masks
Source: https://tympanus.net/codrops/2026/03/11/svg-mask-transitions-on-scroll-with-gsap-and-scrolltrigger/
Score: 7/10
Status: Built as `svg-mask-chapters.html`
Why built: It now has a distinct product/editorial chapter use case and a reduced-motion still-state.
Best fit: Premium product pages, portfolio case studies, hospitality, editorial stories.
Risk: Needs strong imagery and careful aspect-ratio handling.

### On-scroll SVG filter distortion

Pattern: Scroll-linked SVG turbulence mask distortion
Source: https://tympanus.net/codrops/2023/07/05/on-scroll-svg-filter-effect/
Score: 7/10
Status: Built as `scroll-filter-distortion.html`
Why built: It uses conservative turbulence values and resolves back to a clean image instead of staying noisy.
Best fit: Music, event, experimental brand, premium image-led hero sections.
Risk: Filter performance and visual noise.

### Hover motion intro grid

Pattern: Pointer-reactive grid that transitions into content
Source: https://tympanus.net/codrops/2024/05/29/hover-motion-intro-animation/
Score: 7/10
Status: Built as `hover-intro-grid.html`
Why built: It now includes tap/focus controls and is framed as a portfolio/campaign intro, not site navigation.
Best fit: Portfolio, campaign, and studio sites.
Risk: Can fight navigation and mobile usability.

### WebGL rotating image gallery

Pattern: Shader-based scroll gallery with rotating image planes
Source: https://tympanus.net/codrops/2024/12/03/how-to-create-a-webgl-rotating-image-gallery-using-ogl-and-glsl-shaders/
Score: 6/10
Status: Built as `webgl-rotating-gallery.html`
Why built: It uses raw WebGL with generated textures, scroll-controlled rotation, and a static fallback.
Best fit: Lookbooks, art, architecture, premium portfolios.
Risk: WebGL performance, asset loading, and accessibility fallback.

## Backlog

### Cinematic 3D scroll scenes

Pattern: Scroll-controlled 3D stage with camera movement, image cylinders, particles, depth, and timed copy.
Source: https://tympanus.net/codrops/2025/11/19/how-to-build-cinematic-3d-scroll-experiences-with-gsap/
Score: 7/10
Why not built yet: Too broad and too heavy without a specific local module story.
What would make it worth building: A concrete product, venue, or case-study camera path with real reduced-motion stills and canvas verification.
Best fit: Premium product storytelling, architecture, venues, art, immersive campaign pages.
Risk: Can become spectacle with no conversion job.

### WebGL shader ripples, reveals, and blur

Pattern: Shader uniforms driven by click, scroll, or drag for ripples, dynamic blur, texture blends, and reveals.
Source: https://tympanus.net/codrops/2025/10/08/how-to-animate-webgl-shaders-with-gsap-ripples-reveals-and-dynamic-blur-effects/
Score: 6/10
Why not built yet: Shader complexity is not worth adding until the visual treatment has a precise use case.
What would make it worth building: A material reveal, drag-velocity gallery blur, or before/after shader wipe using real imagery.
Best fit: Music, events, premium galleries, product material pages.
Risk: Heavy, easy to overdo, and must have robust image/canvas fallbacks.

### Layered image grid zoom

Pattern: Deconstructed image grid with split text and masked zoom on scroll.
Source: https://tympanus.net/codrops/2025/10/29/building-a-layered-zoom-scroll-effect-with-gsap-scrollsmoother-and-scrolltrigger/
Score: 6/10
Why not built yet: It overlaps `zoom-parallax.html` unless a future example sharpens the content job.
What would make it worth building: A distinct image-grid-to-product-arrival module with strong assets and mobile-safe composition.
Best fit: Campaign intros, editorial imagery, portfolio launches.
Risk: Weak images or mobile cropping make it look like a generic zoom demo.

## Rejected As Module

### GSAP animation tips

Pattern: General GSAP technique list.
Source: https://tympanus.net/codrops/2025/09/03/7-must-know-gsap-animation-tips-for-creative-developers/
Score: 5/10 as a module
Why rejected: Useful craft reference, but not one focused cinematic pattern.
Best fit: Reference material for text masking and timeline cleanup.
Risk: A tips sampler would add noise to the module library.
