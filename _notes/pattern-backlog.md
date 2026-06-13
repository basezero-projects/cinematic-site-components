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

### 3D camera tour

Pattern: Scroll-controlled camera path through a staged 3D product, venue, or artifact
Source: https://tympanus.net/codrops/2025/11/19/how-to-build-cinematic-3d-scroll-experiences-with-gsap/
Score: 8/10
Status: Built as `scroll-camera-tour.html`
Why built: The broad cinematic 3D source was narrowed into a practical camera-direction module with a procedural object, synced copy beats, mobile framing, and a static fallback.
Best fit: Product construction, venue walkthroughs, architecture, hardware, gallery installations, immersive case-study artifacts.
Risk: Without a real subject to inspect, camera movement becomes spectacle.

### Spatial product hotspots

Pattern: A lightweight CSS 3D object tilts and reveals concrete part explanations through hotspots
Source: https://tympanus.net/codrops/2024/03/06/on-scroll-3d-stack-motion-effect/ and https://tympanus.net/codrops/2025/05/07/on-scroll-3d-carousel/
Score: 8/10
Status: Built as `spatial-product-hotspots.html`
Why built: It adds a useful 3D product-disclosure pattern without model loading or WebGL cost.
Best fit: Product detail sections, installation artifacts, device features, package callouts, service objects.
Risk: Hotspots feel fake if they do not point to visible product details.

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

### WebGL material reveal

Pattern: Shader uniforms blend raw and finished material textures while scroll and pointer position drive the reveal edge
Source: https://tympanus.net/codrops/2025/10/08/how-to-animate-webgl-shaders-with-gsap-ripples-reveals-and-dynamic-blur-effects/
Score: 8/10
Status: Built as `webgl-material-reveal.html`
Why built: It turns the broad shader source into a concrete inspection module for product materials, restoration, coatings, fabrication, and premium before/after surfaces.
Best fit: Product detail sections, material pages, restoration proof, coating/finish claims, food or fabrication macro imagery.
Risk: If the two layers are weak or flat, the shader becomes decorative noise.

### Folding package scroll

Pattern: Scroll opens a physical package through hinged panels and resolves into a payload frame
Source: https://tympanus.net/codrops/2022/12/13/how-to-code-an-on-scroll-folding-3d-cardboard-box-animation-with-three-js-and-gsap/
Score: 8/10
Status: Built as `folding-package-scroll.html`
Why built: It adds a physical product-construction motion job for packaging, welcome kits, fulfillment, and assembly stories without needing model assets.
Best fit: Product launches, packaging pages, welcome kits, fulfillment flows, physical goods.
Risk: If the box does not matter, the fold reads as decorative cardboard.

### Projection mapping grid

Pattern: One visual source maps across many 3D cells so the surface reconstructs a projected signal
Source: https://tympanus.net/codrops/2025/08/28/interactive-video-projection-mapping-with-three-js/
Score: 8/10
Status: Built as `projection-mapping-grid.html`
Why built: It gives event, launch, venue, and campaign pages a physical-surface WebGL pattern that is distinct from carousel and gallery modules.
Best fit: Event walls, venue pages, product arrays, music/campaign surfaces, installation recaps.
Risk: Empty cubes or unreadable final marks turn it into surface-level spectacle.

### Persistent 3D transition

Pattern: A persistent Three.js canvas remains mounted while camera movement connects content states
Source: https://tympanus.net/codrops/2026/03/18/building-seamless-3d-transitions-with-webflow-gsap-and-three-js/
Score: 8/10
Status: Built as `persistent-3d-transition.html`
Why built: It covers a real transition architecture: one spatial scene, stateful camera movement, synced HTML copy, and a static fallback.
Best fit: Product families, case-study routes, venue zones, service modes, connected page states.
Risk: Too many stations or generic objects make the scene feel cryptic.

### Ink bleed overlay

Pattern: A screen-space shader opens and closes a real HTML overlay panel
Source: https://tympanus.net/codrops/2026/04/28/more-than-a-portfolio-building-a-scroll-driven-3d-world-with-something-to-say/
Score: 8/10 for the narrowed overlay pattern
Status: Built as `ink-bleed-overlay.html`
Why built: It narrows a broad 3D world reference into a reusable context-change transition for contact, booking, project-detail, and editorial menu overlays.
Best fit: Contact panels, booking overlays, project details, editorial menus, campaign mode switches.
Risk: Shader overlays become decorative if they do not open a meaningful new mode.

## Backlog

### Layered image grid zoom

Pattern: Deconstructed image grid with split text and masked zoom on scroll.
Source: https://tympanus.net/codrops/2025/10/29/building-a-layered-zoom-scroll-effect-with-gsap-scrollsmoother-and-scrolltrigger/
Score: 6/10
Why not built yet: It overlaps `zoom-parallax.html` unless a future example sharpens the content job.
What would make it worth building: A distinct image-grid-to-product-arrival module with strong assets and mobile-safe composition.
Best fit: Campaign intros, editorial imagery, portfolio launches.
Risk: Weak images or mobile cropping make it look like a generic zoom demo.

### Reactive 3D image tube

Pattern: Scroll-driven cylindrical image field for travelling through a collection.
Source: https://tympanus.net/codrops/2026/02/17/reactive-depth-building-a-scroll-driven-3d-image-tube-with-react-three-fiber/
Score: 7/10
Why not built yet: It overlaps the current WebGL rotating gallery, coverflow, and horizontal gallery modules.
What would make it worth building: A stronger collection-specific story where the visitor needs to travel through a visual archive.
Best fit: Lookbooks, portfolio archives, campaign galleries, venue/media pages.
Risk: Can become a novelty loop with weak hierarchy.

### Responsive WebGL text

Pattern: DOM text stays accessible while WebGL mirrors or enhances it with shader effects.
Source: https://tympanus.net/codrops/2025/06/05/how-to-create-responsive-and-seo-friendly-webgl-text/
Score: 7/10
Why not built yet: It needs a specific text treatment worth the DOM/WebGL synchronization cost.
What would make it worth building: A shader-text module where real DOM text remains visible and the WebGL layer adds a meaningful material or distortion cue.
Best fit: Editorial heroes, music/event pages, product campaigns, identity sections.
Risk: Canvas-only text breaks accessibility and mobile wrapping.

### 3D infinite carousel with reactive gradients

Pattern: 3D card carousel where the background colour field reacts to the active item.
Source: https://tympanus.net/codrops/2025/11/11/building-a-3d-infinite-carousel-with-reactive-background-gradients/
Score: 6/10
Why not built yet: It is useful but not distinct enough from the existing coverflow module.
What would make it worth building: A featured-item module where the reactive background clearly helps active-card focus.
Best fit: Featured products, campaign cards, music/event cards, premium testimonials.
Risk: Reactive gradients can become decoration.

### Scroll-reactive 3D gallery

Pattern: Scroll velocity and active item state drive a 3D gallery with mood-based background changes.
Source: https://tympanus.net/codrops/2026/03/09/building-a-scroll-reactive-3d-gallery-with-three-js-velocity-and-mood-based-backgrounds/
Score: 6/10
Why not built yet: It overlaps existing coverflow, horizontal-scroll, WebGL rotating gallery, hover grid, and image trail modules.
What would make it worth building: A collection-specific story where velocity and mood changes help users understand active item hierarchy.
Best fit: Campaign galleries, venue media, portfolio archives, lookbooks.
Risk: Velocity-driven galleries can turn into novelty motion.

### Scroll-revealed WebGL gallery

Pattern: Scroll and route state coordinate a WebGL gallery reveal.
Source: https://tympanus.net/codrops/2026/02/02/building-a-scroll-revealed-webgl-gallery-with-gsap-three-js-astro-and-barba-js/
Score: 6/10
Why not built yet: The source is more useful as multi-page architecture reference than as another static gallery module.
What would make it worth building: A future routed site or library module where persistent WebGL state is the actual problem being solved.
Best fit: Multi-page portfolios, lookbooks, galleries, art-direction sites.
Risk: Heavy orchestration can hide the reusable effect.

### Scroll-driven cube gallery

Pattern: Scroll turns featured image/content tiles into a 3D cube field.
Source: https://tympanus.net/codrops/2026/05/26/building-a-scroll-driven-3d-cube-gallery-in-webflow-with-gsap/
Score: 6/10
Why not built yet: It is not distinct enough from the existing collection and card-stack modules.
What would make it worth building: A compact featured-item cube system tied to CMS cards or campaign drops.
Best fit: Featured case studies, product collections, campaign drops, editorial packages.
Risk: Cube structures can obscure content and become motion for motion's sake.

## Rejected As Module

### GSAP animation tips

Pattern: General GSAP technique list.
Source: https://tympanus.net/codrops/2025/09/03/7-must-know-gsap-animation-tips-for-creative-developers/
Score: 5/10 as a module
Why rejected: Useful craft reference, but not one focused cinematic pattern.
Best fit: Reference material for text masking and timeline cleanup.
Risk: A tips sampler would add noise to the module library.

### Dreamy GPGPU particles

Pattern: GPU particle field for atmospheric motion.
Source: https://tympanus.net/codrops/2024/12/19/crafting-a-dreamy-particle-effect-with-three-js-and-gpgpu/
Score: 5/10 as a module
Why rejected: Particles without a subject are one of the easiest ways to collect junk animation.
Best fit: Technical reference for rare art, music, event, or product-atmosphere work.
Risk: Decorative haze and heavy shader complexity.

### Staggered 3D grid animations

Pattern: Scroll-triggered grid items enter with 3D stagger and perspective.
Source: https://tympanus.net/codrops/2024/10/16/staggered-3d-grid-animations-with-scroll-triggered-effects/
Score: 5/10 as a module
Why rejected: Too close to generic card-grid entrance animation for this library.
Best fit: Reference for future grid polish.
Risk: Too many cards moving at once hurts scanability.
