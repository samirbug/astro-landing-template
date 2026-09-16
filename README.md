# Astro Landing Template

## Tech Stack
- Framework: Astro 5
- UI: React and TailwindCSS
- Code Quality: Biome
- Environment: Nix Flake, direnv, pnpm

## Prerequisites
- [Nix](https://nixos.org/) (with Flakes enabled)
- [direnv](https://direnv.net/)
> *Note:* If you are not using Nix, ensure you have **Node.js 24+** and **pnpm** installed globally.

## Quick Start
1. Click the **"Use this template"** button at the top of this GitHub repository, or use the GitHub CLI:
```bash
gh repo create project-name --template samirbug/astro-landing-template --private --clone
```

2. Navigate to the project directory and allow direnv:
```bash
cd project-name
direnv allow
```

3. Install dependencies:
```bash
pnpm install