# weft-loom-theme-ihes

`ihes` brand theme for weft-loom compile tooling.

**Signature** : IHES — Bourbaki-sober : cream #FAF6ED + black + serif Cardo, thin red rule on title slide.

## Usage (Marp slides)

```yaml
---
marp: true
theme: ihes
---

# Slide title
```

The theme is published as an OCI artifact at
`ghcr.io/openweft/weft-loom-theme-ihes:<tag>` and consumed by
the tool images via a multi-stage `COPY --from=` :

```dockerfile
COPY --from=ghcr.io/openweft/weft-loom-theme-ihesatest /marp/ /opt/marp/themes/
```

## Layout

| Path                  | Contents                                  |
| --------------------- | ----------------------------------------- |
| `marp/ihes.css`   | Marp slide stylesheet                     |
| `pandoc/ihes.tex` | pandoc XeLaTeX template (V0.2)            |
| `latex/ihes.sty`  | raw LaTeX style package (V0.2)            |

## Brand integrity

The CSS commits to the institution's published visual identity
guide. Re-brand drift → open a PR with the citation. Logos +
wordmarks remain the property of their owners and are referenced
only by colour + typography, never bundled as image assets.

## License

BSD-3-Clause (openweft).
