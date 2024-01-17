# js-modules-wasm-poc

Testing out Wasm with JS modules

## About

This is a proof of concept for using Wasm with JS modules. It uses [Zig](https://ziglang.org/) to compile the Wasm module and [Vite](https://vitejs.dev/) to serve the static files.

## How to use

Build the wasm module

```bash
zig build
```

> Note: you can also run `zig build` from the `web` directory and it will work just fine

Run the server

```bash
cd web
npx vite # or whatever other static file server you want to use
```
