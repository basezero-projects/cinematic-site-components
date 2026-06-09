# Layered Zoom Scroll Effect

Source: Codrops, "Building a Layered Zoom Scroll Effect with GSAP ScrollSmoother and ScrollTrigger"
URL: https://tympanus.net/codrops/2025/10/29/building-a-layered-zoom-scroll-effect-with-gsap-scrollsmoother-and-scrolltrigger/
Reviewed: 2026-06-09

## Useful Pattern

A deconstructed image grid separates, a central masked image zooms forward, and split text moves apart as the visitor scrolls. It is useful as a study in depth staging and foreground/background pacing.

## Why It Is Good

- Strong visual craft when the page has high-quality image assets.
- Good lesson in building a depth illusion from normal DOM layers.
- The split text plus masked zoom can create a memorable arrival moment.

## Risks

- The folder already has `zoom-parallax.html`; building another zoom module now would duplicate the category.
- Split text and image grids can become expensive or crop badly on phones.
- The effect needs a real product or editorial image set, not placeholders.

## Quality Gate

Score: 6/10

Decision: Backlog.

Revisit only if a future module combines deconstructed image grids with a use case that the current zoom parallax example does not cover.
