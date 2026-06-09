# Dreamy Three.js GPGPU Particles

Source: Codrops, "Crafting a Dreamy Particle Effect with Three.js and GPGPU"
URL: https://tympanus.net/codrops/2024/12/19/crafting-a-dreamy-particle-effect-with-three-js-and-gpgpu/
Reviewed: 2026-06-09
Scrape method: Firecrawl

## Useful Pattern

GPU particles create a soft atmospheric field that can form, drift, and react without CPU-heavy DOM animation.

## Why It Is Good

- Useful for rare high-end editorial, music, event, and art-direction moments.
- Good technical reference for particle performance and render-loop discipline.
- Could support a product aura or material reveal if tied to a real subject.

## Risks

- Particles are one of the easiest ways to add junk motion.
- Without a product, person, image, or scene to reveal, the effect becomes decorative haze.
- GPGPU complexity is a poor trade for most marketing pages.

## Quality Gate

Score: 5/10 as a module, useful as a reference.

Decision: Reject as standalone module.

Keep as technical reference only. Do not add particle fields unless they reveal or support real content.
