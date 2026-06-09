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
