# Cinematic Site Components Changelog

## [0.1.1] - 2026-06-09

### Fixed

- **FlareSolverr fallback instructions use the existing container**: Updated the cinematic animation intake workflow so agents use the already-provisioned local `flaresolverr` Docker container on `http://localhost:8191` instead of creating a duplicate container. The Firecrawl-first workflow is unchanged; FlareSolverr remains a fallback only for public source pages that return Cloudflare challenge content.

## [0.1.0] - 2026-06-09

### Added

- **Quality-gated animation intake**: Added a curation system for expanding the cinematic animation library without collecting random effects. Future agents now have `QUALITY-GATE.md` for scoring candidates, `INTAKE-WORKFLOW.md` for Firecrawl-first source intake with FlareSolverr only as a public-page fallback, `_sources/` for distilled source notes, and `_notes/` for the pattern backlog and source log. Accepted modules must score high on visual quality, UX usefulness, reusability, performance, and implementation cleanliness before they become standalone `.html` demos.
