# GSAP ScrollTrigger Reference

- Source: GSAP docs
- URL: https://gsap.com/docs/v3/Plugins/ScrollTrigger/
- Scrape method: Firecrawl
- Reviewed: 2026-06-09
- Decision: Implementation reference

## Distilled Use

Use ScrollTrigger for cinematic modules when scroll position must control animation progress, pin a scene, or synchronize a sticky visual with chapter copy.

## Local Rules

- Use `scrub` only when the motion should be physically tied to scroll.
- Use pinned/sticky scenes sparingly.
- Keep scroll handlers out of layout work.
- Prefer animating SVG stroke offsets, transforms, opacity, and CSS variables.
- Provide a `prefers-reduced-motion` branch that disables scroll-scrubbed movement.

## Why It Belongs In The Source Notes

Several existing modules already use GSAP and ScrollTrigger. This note is the implementation reference that supports map paths, masks, reveals, and pinned sequences without adding new dependencies.
