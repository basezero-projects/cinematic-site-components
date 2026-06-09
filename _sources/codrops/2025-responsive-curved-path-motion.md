# Responsive Curved Path Motion

Source: Codrops, "Building Responsive, Scroll-Triggered Curved Path Animations with GSAP"
URL: https://tympanus.net/codrops/2025/12/17/building-responsive-scroll-triggered-curved-path-animations-with-gsap/
Reviewed: 2026-06-09

## Useful Pattern

An element travels along a curved path between meaningful anchor points while the scroll position controls progress. The source focuses on GSAP MotionPath and responsive recalculation, but the durable idea is simpler: derive the path from visible anchors, draw the route as progress advances, and keep the moving object tied to a real narrative beat.

## Why It Is Good

- The motion has a clear job: connect separated proof points into one journey.
- It adapts well to service routes, product flows, quote funnels, timelines, and campaign sequences.
- The interaction is easy to explain to another agent if the behavior contract is written down.
- The local module can be implemented with vanilla SVG `getPointAtLength()`, avoiding a plugin dependency for the basic version.

## Risks

- A route with no real content purpose turns into decoration.
- Too many anchors make the page feel like a map UI instead of a story.
- Moving HTML elements along paths can drift on responsive layouts unless the path and token share the same coordinate system.
- Reduced motion still needs to show the full sequence.

## Quality Gate

Score: 9/10

Decision: Build as `curved-path-motion.html`.

The local module uses an original SVG route and content model. No source code was copied.
