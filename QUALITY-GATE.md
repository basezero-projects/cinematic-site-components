# Cinematic Animation Quality Gate

This folder is curated. Do not add animation modules because they are trendy, loud, or easy to scrape. Add them only when they can make a SYVR site feel more considered, more premium, or easier to understand.

## What qualifies

A candidate must do at least one real job:

- **Storytelling**: reveals a product, process, before/after, timeline, service proof, or brand idea.
- **Hierarchy**: pulls attention toward the thing the page is actually trying to sell.
- **Spatial clarity**: makes movement between states or sections easier to understand.
- **Product feel**: gives a site a distinctive motion language without harming usability.
- **Proof**: visualizes numbers, progress, comparisons, technical depth, or craftsmanship.

If the only argument is "it looks cool," reject it.

## Scorecard

Score each candidate before building it.

| Category | 0 | 1 | 2 |
| --- | --- | --- | --- |
| Visual quality | Generic, dated, noisy | Good base idea but needs polish | Feels premium and intentional |
| UX usefulness | Distracts or blocks reading | Useful in narrow cases | Clearly improves the section |
| Reusability | Locked to one layout or brand | Adaptable with edits | Works across multiple site types |
| Performance | Layout thrash, heavy, fragile | Acceptable with tuning | Smooth, focused properties, sane cost |
| Implementation cleanliness | Brittle or dependency-heavy | Manageable | Simple, readable, easy to lift |

Decision:

- `8-10`: build a local module.
- `6-7`: backlog for later or combine with a stronger idea.
- `0-5`: reject.

## Hard reject list

Reject candidates with any of these problems:

- Random particle spam with no content purpose.
- Glitch effects used as a default style instead of a rare brand-specific accent.
- Scroll hijacking that fights normal reading.
- Cursor effects that hide the real cursor, block links, or fail on touch.
- Large ambient motion behind body copy.
- One-off code that cannot be adapted without rewriting it.
- Heavy dependency chains for one visual trick.
- No reduced-motion fallback path.
- Scraped code with unclear license or attribution.

## Required notes for accepted modules

Every accepted module needs a short curation note in the source log:

```text
Module:
Source:
Score:
Good for:
Avoid for:
Motion risk:
Reduced motion fallback:
Dependencies:
License/attribution:
Why it belongs here:
```

## Module build checklist

Before a new `.html` file lands:

- It runs as a standalone file in a browser.
- It uses the same no-build pattern as the existing modules.
- It has a clear demo, not a blank technical toy.
- It works at desktop and mobile widths.
- It includes `prefers-reduced-motion` behavior.
- It avoids `transition: all`.
- It avoids layout animation inside scroll handlers.
- It uses GSAP/ScrollTrigger only when CSS or small vanilla JS is not enough.
- It is documented in `README.md`.
- It is documented in `IMPLEMENTATION-REFERENCE.md` with best use, preserve, and avoid notes.
- It is linked from `index.html`.

## Adaptation checklist

Before using an existing module on a real site:

- Read `IMPLEMENTATION-REFERENCE.md` for the module's behavior contract.
- Replace demo copy, placeholder blocks, and weak imagery with real site content.
- Verify the animation at desktop and mobile widths.
- Verify first, middle, and final states, not only the load state.
- Verify close/reverse paths for click and modal effects.
- Verify touch or no-hover behavior for cursor and hover effects.
- Verify reduced-motion behavior still communicates the content.
- Check for known traps: GSAP immediate rendering, sticky containers broken by ancestor overflow, stale cached previews, off-by-one `nth-child` selectors, transparent card stacks, and labels floating across pinned content.
