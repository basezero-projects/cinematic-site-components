# Scroll-Reactive 3D Gallery

Source: Codrops, "Building a Scroll-Reactive 3D Gallery with Three.js, Velocity, and Mood-Based Backgrounds"
URL: https://tympanus.net/codrops/2026/03/09/building-a-scroll-reactive-3d-gallery-with-three-js-velocity-and-mood-based-backgrounds/
Reviewed: 2026-06-12

## Useful Pattern

Scroll velocity and active item state alter a 3D gallery and its background mood. The reusable idea is kinetic browsing for a strong image collection, not another generic carousel.

## Why It Is Good

- Useful reference for campaign galleries, venue media, portfolio archives, and lookbooks.
- Velocity response can make a collection feel tactile when the image set is strong.
- Mood-based background changes can help active item focus if restrained.

## Risks

- The library already has coverflow, horizontal scroll, WebGL rotating gallery, hover grid, and image trail modules.
- Velocity-driven galleries can become novelty motion and weaken scanability.
- Weak assets make the whole effect feel like an animation demo.

## Quality Gate

Score: 6/10 as a new module, useful as reference.

Decision: Backlog.

Do not build until there is a sharper content job than "another 3D gallery." A future version would need a collection-specific reason, strong image hierarchy, and a mobile-safe fallback.
