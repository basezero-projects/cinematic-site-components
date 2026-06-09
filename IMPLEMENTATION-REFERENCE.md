# Cinematic Module Implementation Reference

Use this file when an LLM is asked to add animation from this folder to a real site. The `.html` files are the source examples; this reference explains how to choose one, what to preserve, and what to verify after adapting it.

## Current Status

- **Module count:** 37 standalone examples.
- **Last verification pass:** 2026-06-09.
- **Preview URL pattern:** run `serve-over-tailscale.ps1`, then open the printed Tailscale URL.
- **Cache behavior:** the Tailscale helper now serves no-cache headers. If Chrome or a phone shows an old effect, restart the helper and reload with a cache-busting query string.
- **Quality rule:** do not add effects from this folder just because they move. Pick the effect that proves something, clarifies a transition, or makes a product/story easier to understand.

## How To Use This Folder In A Prompt

Point the LLM at this folder and say:

```text
Use D:\Work\App_Projects\All_Projects\Websites\_resources\cinematic-site-components as the motion reference.
Read README.md, QUALITY-GATE.md, and IMPLEMENTATION-REFERENCE.md first.
Choose only animations that fit the page's content job.
When adapting a module, preserve the behavior contract and verify it in browser at desktop and mobile widths.
```

If the target page is a SYVR/client marketing page, also point it at the relevant design skill or brand notes. These modules provide motion patterns, not a full page taste system.

## Non-Negotiable Adaptation Rules

1. **Use real content and real imagery.** A cinematic effect over placeholder blocks usually reads as fake. Cursor reveals, masks, galleries, and parallax need actual visual assets.
2. **Verify the full interaction, not only the first frame.** Open, close, scroll through the middle, scroll through the end, hover, drag, tap, and reduced-motion states where relevant.
3. **Preserve reverse states.** Morphs, overlays, drawers, and expanded panels need a clean exit animation or intentional static fallback.
4. **Preserve initial hidden states.** GSAP `fromTo()` tweens can immediate-render starting values and reveal final content too early. Use `autoAlpha`, CSS initial states, and `immediateRender: false` where needed.
5. **Do not animate layout-heavy properties in scroll handlers.** Prefer `transform`, `opacity`, CSS variables, SVG stroke offsets, and WebGL uniforms.
6. **Do not leave scroll-linked headers or labels floating across pinned content.** Keep tabs, progress, and captions inside the panel they belong to.
7. **Keep cards opaque unless transparency is the actual effect.** Stacked cards must stay readable while older cards recede.
8. **Account for real DOM structure.** If a stack uses `nth-child`, remember labels or helper elements count as children. Prefer classes or CSS variables when porting.
9. **Mobile cannot be an afterthought.** Hover-only effects need tap/focus/autoplay behavior. Wide scroll scenes need a stacked fallback or safe viewport mapping.
10. **Reduced motion must still explain the content.** Disable motion, not meaning.

## Known Failure Patterns To Avoid

| Failure | Why it happened | Correct pattern |
| --- | --- | --- |
| View transition opened but snapped closed | Close handler only removed overlay classes | Store source element and animate back before clearing state |
| Sticky final card went behind stack | `nth-child()` ignored a label element before cards | Target real card positions or use explicit classes/z-index values |
| Spotlight showed flat colour fields | Demo depended on weak/generated layers and stale cache | Use real image layers and no-cache preview during QA |
| Zoom parallax final card appeared immediately | GSAP `fromTo()` immediate-rendered a visible start state | Keep CSS hidden state and use `autoAlpha`/`immediateRender: false` |
| SVG mask chapter label floated across page | Chapter controls were positioned outside the content panel | Keep controls scoped to the section panel or pinned rail |
| Marquee felt frantic | Timing was tuned for demo novelty, not site reading | Slow ambient loops and dampen scroll speed influence |
| Scroll pages looked fine at top but blank mid-scroll | Sticky/transform math was not verified through the whole range | Capture frames at 0%, 25%, 50%, 75%, and 100% |

## Module Registry

### Scroll-Driven

| File | Use for | Preserve | Avoid |
| --- | --- | --- | --- |
| `text-mask.html` | Hero or section headline that fills as the visitor scrolls into a key idea. | Text remains readable before and after the fill. | Long paragraphs, low-contrast image masks, or critical copy hidden behind motion. |
| `sticky-stack.html` | Product, service, or feature narrative where one object stays pinned while details change. | Pinned object, synced feature states, mobile stacked fallback. | Pages without a strong central object or offer. |
| `zoom-parallax.html` | Arrival moments where a product/offer is revealed after a depth journey. | Initial product card stays hidden until the reveal window. | Showing the final card on load or using huge layers that crop badly. |
| `horizontal-scroll.html` | Case-study galleries, timelines, or collections with strong cards. | Desktop horizontal motion plus mobile vertical stack. | Locking normal reading or creating blank pinned frames. |
| `sticky-cards.html` | Process steps, service tiers, or phased narratives. | Opaque cards, final card highest layer, offsets that account for labels. | Transparent overlays or off-by-one `nth-child` selectors. |
| `svg-draw.html` | Route paths, technical diagrams, installation steps, or process lines. | Visible guide path before progress begins. | Decorative scribbles with no information value. |
| `curtain-reveal.html` | Before/after hero, event reveal, or product launch opening. | First viewport shows the curtain state and reveal target. | Hiding the actual content behind a title-only intro. |
| `split-scroll.html` | Paired comparisons or dual narratives. | Independent readable panes and clean mobile stacking. | Dense copy on both sides moving at once. |
| `color-shift.html` | Section-by-section mood changes for editorial or product pages. | Contrast checked at every colour stop. | One-note palette swaps with no content reason. |
| `service-area-map.html` | Local service coverage, delivery zones, route proof, event logistics. | Real towns/areas, route meaning, grounded notes. | Fake live dashboards, fake job IDs, or fake telemetry. |
| `svg-mask-chapters.html` | Product/editorial chapters with strong image changes. | Controls stay inside the chapter panel; mask change has narrative meaning. | Weak imagery or service pages where the reveal does not add meaning. |
| `scroll-filter-distortion.html` | Music, event, experimental brand, or image-led editorial moments. | Distortion resolves back to clarity. | Trust-heavy pages where distortion makes the asset harder to inspect. |
| `webgl-rotating-gallery.html` | Lookbooks, art, architecture, premium visual galleries. | WebGL fallback and readable mobile composition. | Low-asset service pages or performance-sensitive landing pages. |
| `curved-path-motion.html` | Product flows, quote funnels, service journeys, case-study timelines, fulfillment routes, or any page where scattered proof needs one clear route. | The moving object must mean something, the active cards should sync with path position, and the final stop needs a concrete action. | Decorative route lines, pages with no real sequence, or dense content where the moving object competes with reading. |
| `scroll-3d-text.html` | Brand pillars, product attributes, capability spectra, and short editorial chapter vocabularies. | Keep the word set tight, sync the active word to explanatory copy, and verify mobile/reduced-motion fallbacks. | Buzzword clouds, long lists, body-copy replacement, or fast spinning text that users have to read. |

### Cursor & Hover

| File | Use for | Preserve | Avoid |
| --- | --- | --- | --- |
| `cursor-reactive.html` | Premium interactive surfaces with glow, tilt, magnetic buttons, or ripples. | Pointer effects never block clicks and have touch-safe behavior. | Hiding the cursor or turning every element into a novelty effect. |
| `hover-intro-grid.html` | Studio/portfolio/campaign intros where projects become the navigation. | Tap/focus support and clear active state. | Critical mobile navigation or local service sites. |
| `accordion-slider.html` | Compact project/service/image comparison strips. | Active strip remains readable and keyboard/touch accessible. | Many panels with similar images or no clear active difference. |
| `cursor-reveal.html` | Before/after, inspection, restoration, lighting, colour, or material reveals. | Real image layers; spotlight uses dim base plus colour reveal; touch fallback. | Flat colour blocks, broken remote assets, or cursor-only meaning. |
| `image-trail.html` | Editorial/portfolio ambience where visual memory matters. | Real image cards and throttled trail count. | Trails over body copy or performance-sensitive pages. |
| `flip-cards.html` | Small sets of feature cards with secondary detail. | Stable card dimensions and readable back faces. | Long copy or mobile grids where flipping hides important information. |
| `magnetic-grid.html` | Playful selection grids, creative index pages, or brand moments. | Coarse-pointer fallback/autoplay force point. | Dense operational UI or navigation that must feel still. |
| `spotlight-border.html` | Premium cards where hover should subtly reveal focus. | Border light stays subtle and content remains primary. | Repeated glow on every section. |
| `drag-pan.html` | Large canvases, map-like galleries, moodboards, or spatial collections. | Drag boundaries and touch behavior. | Content users need to read linearly. |

### Click & Tap

| File | Use for | Preserve | Avoid |
| --- | --- | --- | --- |
| `view-transitions.html` | Product cards, case cards, thumbnails, or pills expanding into detail. | Bidirectional morph: source to detail and detail back to source. | One-way modal pops or clearing state before reverse animation finishes. |
| `particle-button.html` | Rare celebratory CTA feedback. | Particles are small, short-lived, and click-triggered only. | Primary navigation or repeated ambient particle spam. |
| `odometer.html` | Stats, savings, counters, inventory, or proof metrics. | Digits animate to real numbers and finish in a readable state. | Fake metrics or constant reruns that distract from the page. |
| `coverflow.html` | Featured products, testimonials, venue photos, or media covers. | Center item is clearly dominant; edge items do not steal focus. | Large content cards with long text. |
| `dynamic-island.html` | Compact status, nav, notification, or mode switcher demos. | Expanded/collapsed states both work on click/tap. | Marketing pages that need obvious controls more than hidden chrome. |
| `dock-nav.html` | Small toolbars, icon launchers, or playful nav on creative pages. | Hit targets stay stable despite magnification. | Main nav for service pages or text-heavy menus. |

### Ambient & Auto

| File | Use for | Preserve | Avoid |
| --- | --- | --- | --- |
| `text-scramble.html` | Technical, AI, security, or editorial code-flash moments. | Short duration, real words, readable final text. | Long body copy or repeated artificial jargon. |
| `kinetic-marquee.html` | Brand texture, event lineups, partner names, or short repeated phrases. | Slow timing and no horizontal overflow. | Fast ticker energy or important content only in the marquee. |
| `mesh-gradient.html` | Background ambience behind sparse hero or product surfaces. | Low motion and sufficient contrast. | Behind paragraphs or as a generic purple-blue blob backdrop. |
| `circular-text.html` | Small badges, seals, awards, or location markers. | The badge is decorative and not the only source of information. | Large rotating copy users must read. |
| `glitch-effect.html` | Rare brand accent for music, cyber, gaming, or technical failure states. | Short bursts and readable base text. | Default headings on trust-heavy or local-service sites. |
| `typewriter.html` | Short command, quote, or terminal-like reveal. | Fast enough to finish and reduced-motion fallback. | Long paragraphs or hero copy that delays comprehension. |
| `gradient-stroke.html` | Display headline or campaign tag with restrained motion. | Strong contrast and static fallback. | Body text or low-contrast outlined copy. |

## Verification Contract Before Shipping An Adaptation

Run these checks before saying the animation is ready:

- Open the adapted page at desktop width and phone width.
- Capture or inspect the first viewport, middle of scroll/interaction, and final state.
- For scroll effects, check 0%, 25%, 50%, 75%, and 100% of the section.
- For click/tap effects, verify open and close paths.
- For cursor/hover effects, verify mouse, touch, and no-pointer states.
- For WebGL/canvas effects, verify nonblank pixels and fallback behavior.
- Turn on reduced motion or emulate it and confirm the section still communicates.
- Run the `syvr-taste` grep gate for client/marketing pages and treat zero hard fails as the floor, not the finish line.

## When Adding New Modules

Update all of these together:

- The new `.html` file.
- `index.html`.
- `README.md`.
- `IMPLEMENTATION-REFERENCE.md`.
- `_notes/source-log.md`.
- `_notes/pattern-backlog.md` if it was promoted from backlog.
- `CHANGELOG.md`.

Then run a browser pass and save screenshots under `D:\Work\App_Projects\All_Projects\.codex-tools\verify-output\`.
