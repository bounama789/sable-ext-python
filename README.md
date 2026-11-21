# Python language support

Grammar, highlights, and an LSP recipe for Python in Sable IDE.

## What it adds

- **Language**: `.py` files are recognised as Python and get comment markers,
  indentation rules, and syntax highlighting from the tree-sitter grammar.
- **Grammar**: `tree-sitter-python` v0.23.6, ARM64 (abi 14).
- **Highlights**: capture → colour mapping built on the shared capture
  vocabulary: keywords, strings, numbers, functions, types, comments, and
  escape sequences inside strings.
- **Language server**: `pylsp` (installed from `python3-pylsp`) supplies
  diagnostics, completion, and formatting through the editor's LSP slot.

## Permissions

- `process.exec: pylsp` — launch the language server.
- `pkg.install: python3-pylsp` — install it on first use.

The extension does not read or write your workspace on its own; all editor
access is brokered and shown in the consent deck before installation.

## Verification

`tests/pack-test.json` asserts the highlight captures at fixed byte offsets in
`fixtures/sample.py`. The pack's conformance is checked in CI on submission
and on device with **Run pack tests** from the command palette.
