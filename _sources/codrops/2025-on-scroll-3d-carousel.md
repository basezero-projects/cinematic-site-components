# On-Scroll 3D Carousel

Source: Codrops, "On-Scroll 3D Carousel"
URL: https://tympanus.net/codrops/2025/05/07/on-scroll-3d-carousel/
Reviewed: 2026-06-09
Scrape method: Firecrawl

## Useful Pattern

Cards move in 3D space as the visitor scrolls, turning the page into a staged carousel sequence.

## Why It Is Good

- Good reference for scroll-driven card depth, focus, and pacing.
- Works best when one featured item should stay dominant while the rest support it.
- Can inform portfolio, product, or testimonial sections.

## Risks

- Overlaps existing `coverflow.html`, `webgl-rotating-gallery.html`, and `sticky-cards.html`.
- It can feel like scroll hijacking if the carousel takes too long to resolve.
- Needs strong active-card hierarchy and a mobile stack fallback.

## Quality Gate

Score: 6/10

Decision: Backlog.

Use as reference for depth pacing, not as a new module until the library needs a more specific carousel variant.
