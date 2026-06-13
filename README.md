# Cinematic Site Modules

40 cinematic website modules. Each one is a single HTML file. No frameworks. No build step. No npm. Just open it.

## Preview

Open `index.html` to browse all 40 modules with animated mini-demos, or open any individual module file directly in a browser.

## Curation Rules

This repo is not a dump of every animation that can be scraped. New modules must pass `QUALITY-GATE.md` before they are built. Use `INTAKE-WORKFLOW.md` when researching sources with Firecrawl or FlareSolverr, then log accepted, backlogged, or rejected candidates in `_notes/source-log.md`.

Build only animations that improve storytelling, hierarchy, spatial clarity, product feel, or proof. Reject effects that are just loud, trendy, hard to reuse, heavy, inaccessible, or unclear on licensing.

## Using These Modules In Real Sites

Before asking an LLM to implement one of these effects, point it at `IMPLEMENTATION-REFERENCE.md`. That file is the canonical adaptation guide: it maps each module to its best use case, notes what must be preserved, and records the failure patterns already fixed during QA.

Do not copy an effect just because it looks cinematic in isolation. Match the effect to the page's content job, then verify the full interaction path after adaptation: first frame, middle state, final state, mobile, and reduced motion.

## Get Started

```bash
git clone https://github.com/robonuggets/cinematic-site-components.git
cd cinematic-site-components
```

Then open `index.html` in your browser, or open any module file directly.

## Tailscale Phone Preview

To view the full gallery from an iPhone on the same tailnet, run this from the repo:

```powershell
powershell -ExecutionPolicy Bypass -File .\serve-over-tailscale.ps1
```

The script binds a static server to the current Tailscale IPv4 address and prints a URL like:

```text
http://100.x.x.x:8035/index.html
```

Open that URL on the phone while Tailscale is connected. Keep the Windows machine awake. If the phone cannot connect, run the script once from an elevated PowerShell with `-OpenFirewall`, or manually allow inbound TCP port `8035`.

## The 40 Modules

### Scroll-Driven (17)
| # | Module | What It Does |
|---|---|---|
| 01 | Text Mask Reveal | Headline fills with colour as you scroll |
| 02 | Sticky Stack Narrative | Product pins, features scroll past it |
| 03 | Layered Zoom Parallax | Depth layers, foreground zooms past |
| 04 | Horizontal Scroll Hijack | Vertical scroll → horizontal gallery |
| 05 | Sticky Card Stack | Cards pin and stack on each other |
| 06 | Scroll SVG Draw | Lines draw themselves on scroll |
| 07 | Curtain Reveal | Hero splits open like curtains |
| 08 | Split Screen Scroll | Two halves scroll opposite directions |
| 09 | Scroll Color Shift | Background changes per section |
| 31 | Service Area Map | Paper route sheet draws across real service towns with example variants for trades, service, and delivery routes |
| 32 | SVG Mask Chapters | Fullscreen image chapters reveal through an expanding SVG mask |
| 33 | Scroll Filter Distortion | SVG turbulence bends an image on scroll before resolving cleanly |
| 35 | WebGL Rotating Gallery | WebGL image planes rotate through a spatial gallery as the page moves |
| 40 | WebGL Material Reveal | WebGL shader blends raw and finished material textures with scroll and pointer inspection |
| 36 | Curved Path Motion | A meaningful object travels along a responsive SVG path through proof points |
| 37 | 3D Scroll Text | Short brand or product vocabulary rotates through a CSS 3D scroll cylinder |
| 38 | 3D Camera Tour | A Three.js camera path inspects a product-like object through planned scroll chapters |

### Cursor & Hover (9)
| # | Module | What It Does |
|---|---|---|
| 10 | Cursor-Reactive | Glow, 3D tilt, magnetic buttons, ripples |
| 34 | Hover Intro Grid | Pointer-reactive project grid opens into a focused intro panel |
| 11 | Accordion Slider | Strips expand on hover |
| 12 | Cursor Image Reveal | Before/after with wipe, spotlight, split |
| 13 | Hover Image Trail | Cursor leaves fading images behind |
| 14 | 3D Flip Cards | Cards rotate to reveal back |
| 15 | Magnetic Repel Grid | Tiles push away from cursor |
| 16 | Spotlight Border Cards | Borders illuminate under cursor |
| 17 | Drag-to-Pan Grid | Infinite draggable canvas |

### Click & Tap (7)
| # | Module | What It Does |
|---|---|---|
| 18 | View Transition Morphing | Elements shape-shift between states |
| 19 | Particle Explosion Button | CTAs burst on click |
| 20 | Odometer Counter | Digit wheels roll to target |
| 21 | 3D Coverflow Carousel | Center focused, edges angled |
| 22 | Dynamic Island Nav | Pill morphs for notifications |
| 23 | macOS Dock Nav | Icons magnify on hover |
| 39 | Spatial Product Hotspots | A lightweight CSS 3D object tilts and reveals concrete product detail hotspots |

### Ambient & Auto (7)
| # | Module | What It Does |
|---|---|---|
| 24 | Text Scramble Decode | Matrix-style character cycling |
| 25 | Kinetic Marquee | Infinite text bands, scroll-reactive |
| 26 | Mesh Gradient Background | Animated colour blobs |
| 27 | Circular Text Path | Text on spinning circle |
| 28 | Glitch Effect | RGB channel split |
| 29 | Typewriter Effect | Text types itself |
| 30 | Gradient Stroke Text | Animated gradient on outlined text |

## Tech Stack

- HTML + CSS + vanilla JS
- GSAP + ScrollTrigger (CDN)
- Three.js (CDN) for selected WebGL/3D modules
- Google Fonts (CDN)
- That's it.

## License

MIT — see [LICENSE](LICENSE) for details.

## Attribution

Created by Jay from RoboLabs. Learn more at [RoboNuggets](https://robonuggets.com)
