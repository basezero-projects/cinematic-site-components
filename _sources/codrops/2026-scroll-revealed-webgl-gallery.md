# Scroll-Revealed WebGL Gallery

Source: Codrops, "Building a Scroll-Revealed WebGL Gallery with GSAP, Three.js, Astro and Barba.js"
URL: https://tympanus.net/codrops/2026/02/02/building-a-scroll-revealed-webgl-gallery-with-gsap-three-js-astro-and-barba-js/
Reviewed: 2026-06-12

## Useful Pattern

A WebGL gallery reveals and transitions through scroll, page routing, and shader-style image movement. The useful reference is orchestration: separate the WebGL layer from page content and keep animation state synchronized with navigation.

## Why It Is Good

- Useful for high-end portfolio, lookbook, gallery, and art-direction sites.
- Good architecture reference for multi-page WebGL experiences.
- Reinforces the need for routing, scroll, canvas, and fallback state to agree.

## Risks

- Too app-specific for this static single-file library.
- Overlaps existing gallery modules unless the future example solves routing or state persistence.
- Heavy dependency stack can distract from the reusable effect.

## Quality Gate

Score: 6/10 as a new standalone module, useful as architecture reference.

Decision: Backlog.

Keep as reference for future multi-page WebGL work. Do not promote until the local module has a distinct content job beyond a scroll-revealed gallery.
