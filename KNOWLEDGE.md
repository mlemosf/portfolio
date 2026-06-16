# Project Knowledge Summary

## Theme created
- New Hugo theme **data-engineer-portfolio** added under `themes/`.
- SCSS assets for variables, base styles, header, timeline, and testimonials.
- Base layout (`baseof.html`) compiles SCSS via Hugo Pipes and includes header/footer.
- Partials:
  - `header.html` – circular portrait + name.
  - `experience.html` – professional‑experience timeline reading from `content/experience/`.
  - `testimonials.html` – grid of testimonials from `data/testimonials.yaml`.
  - `footer.html` – email link and social‑network icons.
- Home page (`layouts/index.html`) renders experience and testimonials.

## Content & data
- Sample experience entry created at `content/experience/job-1/index.md`.
- Sample testimonials added in `data/testimonials.yaml`.
- Placeholder portrait image path set (`static/img/portrait.jpg`).
- Social links, name, and email added to `hugo.toml` under `[params]`.

## Configuration
- `hugo.toml` now uses `theme = "data-engineer-portfolio"` and defines site params.
- SCSS compiled to a fingerprinted stylesheet via Hugo Pipes.

## How to run
```bash
cd /home/matheus/Documents/projetos/hugo-portfolio
hugo server -D   # local dev
hugo --minify    # production build (outputs to public/)
```

The theme is ready for further content, responsive tweaks, or publishing as a Hugo module.
