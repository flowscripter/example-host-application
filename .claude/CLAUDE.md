# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project

Example host application executable for the [dynamic-plugin-framework](https://github.com/flowscripter/dynamic-plugin-framework). Demonstrates loading and invoking plugins via a URL-based plugin repository, instantiating extensions, and running them from a compiled Bun executable.

## Commands

```bash
# Install
bun install

# Test
bun test

# Run directly
bun run index.ts

# Compile binary
bun build index.ts --compile --outfile /tmp/example-host-application

# Lint and format
bunx oxfmt
bunx oxlint index.ts src/ tests/
```

## Architecture

- `index.ts` -- entry point, calls `exampleHostApplication()`
- `src/ExampleHostApplication.ts` -- core logic: creates a `UrlListPluginRepository`, initialises `DefaultPluginManager`, registers extensions for `EXTENSION_POINT_1`, instantiates the first found extension, and invokes `sayHello()`
- `tests/hello_test.ts` -- single integration test that runs `exampleHostApplication()` end-to-end

Key dependencies: `@flowscripter/dynamic-plugin-framework` (plugin manager, repository), `@flowscripter/example-plugin-api` (extension point constants and types).
