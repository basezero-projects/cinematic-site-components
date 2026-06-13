# Scroll-Driven 3D World

Source: Codrops, "More Than a Portfolio: Building a Scroll-Driven 3D World with Something to Say"
URL: https://tympanus.net/codrops/2026/04/28/more-than-a-portfolio-building-a-scroll-driven-3d-world-with-something-to-say/
Reviewed: 2026-06-12

## Useful Pattern

The source frames 3D as a narrative world rather than a background trick. For this library, the strongest reusable sub-pattern is the context-changing overlay: use a shader or 3D layer to move the visitor into a new mode without detaching from the page behind it.

## Why It Is Good

- Useful as direction for editorial menus, contact panels, booking overlays, and project-detail layers.
- The effect is valuable when it changes the visitor's state, not when it is just ambient.
- It reinforces the library rule that 3D should tell a story or clarify context.

## Risks

- Full 3D worlds are too broad and too bespoke for this component library.
- Shader overlays can hide weak content or become a decorative loading screen.
- Menus and overlays need a clean close path and a reduced-motion path.

## Quality Gate

Score: 8/10 for overlay transition, 6/10 for full-world reuse.

Decision: Built a narrowed overlay module as `ink-bleed-overlay.html`.

The local module takes the mode-change idea and implements it as a screen-space ink spread that opens and closes a real HTML panel. It avoids copying a whole portfolio world and keeps the pattern reusable for client sites.
