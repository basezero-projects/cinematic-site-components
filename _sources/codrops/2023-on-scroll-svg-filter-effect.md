# On-Scroll SVG Filter Effect

- Source: Codrops
- URL: https://tympanus.net/codrops/2023/07/05/on-scroll-svg-filter-effect/
- Scrape method: Firecrawl
- Reviewed: 2026-06-09
- Candidate score: 7/10
- Decision: Backlog

## Distilled Pattern

Bind scroll progress to an SVG turbulence/filter mask so an image appears to distort organically while a title or visual element moves between layout positions.

## Why It Is Good

- Distinctive image treatment for premium product pages, music/event sites, editorial intros, and experimental brand pages.
- Combines an image reveal with a tactile material feel.
- Could produce a reusable "distorted mask reveal" module if kept restrained.

## Risks

- Easy to overdo. Turbulence can look cheap or messy if the brand does not support it.
- Filter performance varies by device and image size.
- Not a good fit for trust-heavy local-service pages unless used as a rare hero accent.

## What Would Make It Worth Building

Build if the module is positioned as a high-end image reveal with conservative presets and a clear reduced-motion fallback.

## Reduced Motion Fallback

Disable turbulence and use a clean clip or opacity reveal.
