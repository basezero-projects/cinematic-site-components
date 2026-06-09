# Reactive Depth 3D Image Tube

Source: Codrops, "Reactive Depth: Building a Scroll-Driven 3D Image Tube with React Three Fiber"
URL: https://tympanus.net/codrops/2026/02/17/reactive-depth-building-a-scroll-driven-3d-image-tube-with-react-three-fiber/
Reviewed: 2026-06-09
Scrape method: Firecrawl

## Useful Pattern

Images are arranged in a cylindrical 3D field and moved by scroll, creating the feeling of travelling through a visual collection rather than swiping a flat carousel.

## Why It Is Good

- Strong for visual archives, lookbooks, portfolio collections, campaign galleries, and venue/media pages.
- Good spatial metaphor when the collection itself is the product.
- The depth can make a large gallery feel curated if the front plane and copy remain readable.

## Risks

- It overlaps `webgl-rotating-gallery.html`, `coverflow.html`, and horizontal gallery modules unless a future build has a sharper content job.
- Image tubes can become a novelty loop when every card has equal weight.
- Mobile framing and reduced-motion fallback need extra care.

## Quality Gate

Score: 7/10

Decision: Backlog.

Build only if the module becomes a specific "travel through a collection" pattern with strong assets and a static list/grid fallback.
