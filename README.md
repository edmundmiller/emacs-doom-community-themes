![Release tag](https://img.shields.io/github/tag/Emiller88/emacs-doom-community-themes.svg?label=release&style=flat-square)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
[![MIT](https://img.shields.io/badge/license-MIT-green.svg?style=flat-square)](./LICENSE)

# doom-community-themes

Doom Community Themes is a supplement for [Doom Themes] providing additional
themes developed and maintained by the community.

## Themes

- `doom-snazzy` (thanks to [ar1a])
- `doom-gruvbox` (thanks to [JongW])
- `doom-solarized-dark`: dark variant of [Solarized] (thanks to [ema2159])
- `doom-palenight`: adapted from [Material Themes] (thanks to [Brettm12345])
- `doom-moonlight`: adapted from [Material Themes] (thanks to [Brettm12345])
- `doom-material` (thanks to [ringuralte])

## Install

### MELPA package

This package is not yet listed on MELPA, but we're working on it!

### Doom package

If you're on the `develop` branch:

```emacs-lisp
;; in ~/.doom.d/packages.el
(package! doom-community-themes
  :recipe (:fetcher "github" :repo "Emiller88/emacs-doom-community-themes"))

;; in ~/.doom.d/config.el
(def-package! doom-community-themes :after doom-themes)
```

If you're on the `straight` branch:

```emacs-lisp
;; in ~/.doom.d/packages.el
(package! doom-community-themes
  :recipe (:host "github" :repo "Emiller88/emacs-doom-community-themes"))

;; in ~/.doom.d/config.el
(use-package! doom-community-themes :after doom-themes)
```

### Manual installation

Adding themes to Emacs requires that the `FOO-theme.el` files exist in a path
listed in the `custom-theme-load-path` variable. By default this refers to
another variable `custom-theme-directory` which is the standard location for
local themes.

In vanilla Emacs, `custom-theme-directory` is `~/.emacs.d` by default.

In Doom Emacs, `custom-theme-directory` is `~/.doom.d/themes` by default.

To perform a manual installation you could:
- copy or clone the themes into your `custom-theme-directory`
- set `custom-theme-directory` to the path of the themes
- append `custom-theme-load-path` with the path to the themes

## Contribute

All contributions are welcome!

This package is a collaborative effort from the Doom Emacs community. If you
need some help, or would like to help, or just want to have a chat, please come
and join us on the official Doom Emacs [discord server](https://discord.gg/bcZ6P3y)!


[ar1a]: https://github.com/ar1a
[JongW]: https://github.com/JongW
[ema2159]: https://github.com/ema2159
[Brettm12345]: https://github.com/Brettm12345
[ringuralte]: https://github.com/ringuralte

[Doom Themes]: https://github.com/hlissner/emacs-doom-themes
[Solarized]: https://ethanschoonover.com/solarized
[Material Themes]: https://github.com/equinusocio/vsc-material-theme
