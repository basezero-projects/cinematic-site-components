# On-Scroll Folding 3D Package

Source: Codrops, "How to Code an On-Scroll Folding 3D Cardboard Box Animation with Three.js and GSAP"
URL: https://tympanus.net/codrops/2022/12/13/how-to-code-an-on-scroll-folding-3d-cardboard-box-animation-with-three-js-and-gsap/
Reviewed: 2026-06-12

## Useful Pattern

Scroll opens a physical object through hinged panels, turning the animation into a construction reveal instead of a simple rotation. The reusable idea is the sequence: closed object, hinge logic, interior reveal, resolved product frame.

## Why It Is Good

- Strong fit for packaging, physical goods, fulfillment kits, onboarding boxes, and product construction pages.
- The folding motion has a clear object logic, so the user can understand why the animation exists.
- It can be adapted with CSS 3D for lighter sites without requiring imported models.

## Risks

- Generic boxes become decorative if the package does not carry part of the story.
- Folded panels can overlap copy on small screens unless the product stage and text panel have separate layout zones.
- The final frame must settle into a readable action state, not stay mid-fold.

## Quality Gate

Score: 8/10

Decision: Built as `folding-package-scroll.html`.

The local module narrows the source into a standalone CSS 3D package example with a closed first frame, hinged flaps, a payload card, synced scroll copy, and a reduced-motion open state.
