# Python Language Pack

A JCode language pack for **Python** (`.py`, `.pyi`, `.pyw`).

- **Coloring** — keywords, builtins, and common types.
- **Completions** — as-you-type snippets for `def`, `class`, dataclasses, `__main__`
  guards, comprehensions, `try/except`, `with`, and more.
- **Helpers** — larger snippets: `__main__` guard, dataclass, `asyncio.run` entry
  point, a pytest test, and a `contextmanager`.
- **Formatter** — *Format Document* runs `black` (falling back to `autopep8`) inside
  the embedded distro, then applies the basic rules (4-space indent, trim trailing
  whitespace, final newline).

Everything works offline. For `black`, install the **Python tooling** SDK from the
SDK Manager; for richer analysis, install a Python language server such as
`pyright` from the LSP Manager (both are *suggested*, not required).

## Install

Browse the JCode marketplace and install **Python Language Pack**, or build it
locally with [`jext`](https://github.com/blamspotdev/j-code-make-tools):

```bash
jext pack . -o dist/
```

## License

MIT. © 2026 blamspotdev (Janrick Samorin).
