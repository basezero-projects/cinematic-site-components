# SVG Mask Transitions on Scroll with GSAP and ScrollTrigger

- Source: Codrops
- URL: https://tympanus.net/codrops/2026/03/11/svg-mask-transitions-on-scroll-with-gsap-and-scrolltrigger/
- Scrape method: Firecrawl
- Reviewed: 2026-06-09
- Candidate score: 7/10
- Decision: Backlog

## Distilled Pattern

Reveal fullscreen images through SVG masks while scroll progress drives the mask shape, copy, and progress indicators. The strongest version uses the mask as a chapter transition, not as a generic reveal.

## Why It Is Good

- Premium feel for product reveals, portfolio case studies, hospitality, events, and editorial pages.
- SVG masks can create distinctive transitions without relying on video.
- Works well when paired with full-bleed imagery and concise chapter copy.

## Risks

- Overlaps with existing local modules like `text-mask.html`, `curtain-reveal.html`, and `cursor-reveal.html`.
- Needs strong images. With mediocre assets it becomes visual noise.
- Can be brittle across mobile aspect ratios if the mask layout is too exact.

## What Would Make It Worth Building

Build only if the local module has a clearly different job, such as "fullscreen product chapter masks" or "before/after image mask sequence," not just another reveal.

## Reduced Motion Fallback

Use static full images with short opacity transitions or instant chapter swaps.
