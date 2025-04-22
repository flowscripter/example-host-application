# example-host-application

[![version](https://img.shields.io/github/v/release/flowscripter/example-host-application?sort=semver)](https://github.com/flowscripter/example-host-application/releases)
[![build](https://img.shields.io/github/actions/workflow/status/flowscripter/example-host-application/release-bun-executable.yml)](https://github.com/flowscripter/example-host-application/actions/workflows/release-bun-executable.yml)
[![coverage](https://codecov.io/gh/flowscripter/example-host-application/branch/main/graph/badge.svg?token=EMFT2938ZF)](https://codecov.io/gh/flowscripter/example-host-application)
[![license: MIT](https://img.shields.io/github/license/flowscripter/example-host-application)](https://github.com/flowscripter/example-host-application/blob/main/LICENSE)

> Example host application executable for the
> [dynamic-plugin-framework](https://github.com/flowscripter/dynamic-plugin-framework)

## Binary Executable Usage

**NOTE**: The binaries are 10's of megabytes in size as the entire Bun runtime
is included.

#### MacOS

Via [Homebrew](https://brew.sh/):

`brew install flowscripter/tap/example-host-application`

#### Linux

In a terminal:

`curl -fsSL https://raw.githubusercontent.com/flowscripter/example-host-application/main/script/install.sh | sh`

#### Windows

Via [Winget](https://github.com/microsoft/winget-cli):

`winget install Flowscripter.example-host-application`

#### Manual Install

You can download and extract the binary zip files from the
[releases](https://github.com/flowscripter/example-host-application/releases)
page.

## Functional Tests

Refer to [functional_tests/README.md](functional_tests/README.md)

## Development

Install dependencies:

`bun install`

Test:

`bun test`

Run:

`bun run index.ts`

Compile binary:

`bun build index.ts --compile --outfile /tmp/example-host-application`

**NOTE**: The following tasks use Deno as it excels at these and Bun does not
currently provide such functionality:

Format:

`deno fmt`

Lint:

`deno lint index.ts src/ tests/`

## Documentation

Refer to the
[dynamic-plugin-framework](https://github.com/flowscripter/dynamic-plugin-framework)
for an overview of what this example is demonstrating.

## License

MIT © Flowscripter
