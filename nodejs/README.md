# Node.js template

This template provides a Nix development shell for scaffolding and running a
Node.js-based web application.

Typical workflow:

```sh
nix flake new my-app -t templates#nodejs
cd my-app
nix develop
npm create next-app@latest .
npm run dev
```
