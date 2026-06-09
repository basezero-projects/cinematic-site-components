# On-Scroll 3D Stack Motion

Source: Codrops, "On-Scroll 3D Stack Motion Effect"
URL: https://tympanus.net/codrops/2024/03/06/on-scroll-3d-stack-motion-effect/
Reviewed: 2026-06-09
Scrape method: Firecrawl

## Useful Pattern

Flat cards separate into layered 3D space, making the structure of a stack visible through perspective and depth.

## Why It Is Good

- Useful for explaining layers, packages, product assemblies, plans, or evidence cards.
- The depth cue is practical when each layer has a different role.
- Informed the lighter `spatial-product-hotspots.html` module, which uses CSS 3D layers and tap states instead of scroll-driven stacking.

## Risks

- Generic 3D stacks are already common and can look like a demo if the layers do not represent real parts.
- Scroll-driven stacks can obscure readable content.
- Needs opaque surfaces and clear active-state copy.

## Quality Gate

Score: 8/10 when narrowed to product inspection.

Decision: Built as `spatial-product-hotspots.html` using the layer-disclosure idea with explicit hotspots, not a generic stack.
