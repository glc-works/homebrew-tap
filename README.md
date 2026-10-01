# GLC Works Homebrew Tap

Official Homebrew Tap for [GLC Works](https://github.com/glc-works) developer and literary engineering tooling.

## Available Formulae

| Formula | CLI Binary | Description | Install Command |
| :--- | :--- | :--- | :--- |
| **`canonforge`** | `cf`, `canonforge` | [CanonForge](https://github.com/glc-works/canonforge): The Git-Native Literary Engineering Studio | `brew install glc-works/tap/canonforge` |
| **`cf`** | `cf` | Short alias formula for CanonForge | `brew install glc-works/tap/cf` |
| **`okf`** | `okf`, `cf` | Backward-compatible alias for OKF Studio | `brew install glc-works/tap/okf` |

## Installation

Add this tap:

```bash
brew tap glc-works/tap
```

Then install CanonForge:

```bash
brew install canonforge
# or:
brew install cf
```

## Quick Verification

```bash
cf --version
cf --help
```

## Documentation & Issues

- Core Studio Repository: [glc-works/canonforge](https://github.com/glc-works/canonforge)
- Report packaging issues here: [glc-works/homebrew-tap/issues](https://github.com/glc-works/homebrew-tap/issues)
- License: [MIT](LICENSE)
