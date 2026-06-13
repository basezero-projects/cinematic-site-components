# Interactive Video Projection Mapping

Source: Codrops, "Interactive Video Projection Mapping with Three.js"
URL: https://tympanus.net/codrops/2025/08/28/interactive-video-projection-mapping-with-three-js/
Reviewed: 2026-06-12

## Useful Pattern

One visual source is mapped across many physical surfaces so the image reads as a projection, not as a normal gallery. The reusable idea is a surface-first scene: start with the unlit object field, distribute the same visual across cells, then resolve into a readable projected mark.

## Why It Is Good

- Strong for event walls, launch installations, venue pages, music pages, product grids, and campaign recaps.
- The physical surface gives the animation a reason to be 3D.
- The pattern is visually different from a carousel because the cells reconstruct one larger image.

## Risks

- Empty cube grids are decorative junk if they do not carry a specific visual.
- The final state must be readable; projection blur or depth cannot hide the title or campaign mark.
- WebGL needs a static fallback and nonblank canvas verification.

## Quality Gate

Score: 8/10

Decision: Built as `projection-mapping-grid.html`.

The local module uses generated canvas texture content, maps it across a Three.js cube wall, drives depth and rotation with scroll, and falls back to a static lit wall with explanation cards.
