# weft-loom-theme-ihes

`ihes` brand theme for weft-loom compile tooling.

**Signature** : `#1C528A` navy primary + `#007AB8` secondary blue +
`#EBB030` warm orange accent — sourced from the IHES theme
stylesheet. The earlier "Bourbaki cream + thin red rule" draft was
an aesthetic guess that doesn't reflect the institution's actual
web identity.

## Source

Colour frequency-counted across the IHES theme stylesheet
(`www.ihes.fr/wp-content/themes/ihes/style.css`, 2026-06 audit) :

| Token              | Hex       | Occurrences in CSS |
| ------------------ | --------- | ------------------ |
| Primary navy       | `#1C528A` | 63                 |
| Soft grey          | `#BDBFBF` | 40                 |
| Secondary blue     | `#007AB8` | 19                 |
| Paper surface      | `#E5E8E8` | 17                 |
| Deep navy          | `#0F2A4A` | 13                 |
| Orange accent      | `#EBB030` | 8                  |

## Typography

The brand-prescribed font is **Raleway** (Google Fonts) — declared
in the IHES theme stylesheet :

```css
font-family: raleway, sans-serif !important;
```

Raleway is free + embedded by the slide renderer automatically.
The thin / light weights (200–300) give the IHES theme its sober
academic feel ; headings use weight 300 by design, not bold.

## Wordmark

The institution wording is "Institut des Hautes Études
Scientifiques" in long form ; "IHES" in short form. The CSS prints
the short form in the footer with wide letter-spacing.

## Usage (Marp slides)

```yaml
---
marp: true
theme: ihes
---

# Slide title
```

## Distribution

Published as an OCI artifact at
`ghcr.io/openweft/weft-loom-theme-ihes:<tag>`. Tool images consume
it via multi-stage `COPY --from=` :

```dockerfile
COPY --from=ghcr.io/openweft/weft-loom-theme-ihes:latest /marp/ihes.css /opt/marp/themes/ihes.css
```

## License

BSD-3-Clause (openweft). The IHES name + logo remain the property
of the Institut des Hautes Études Scientifiques ; this repo
references the brand only by colour and typography.

## Cover slide / logo

The theme renders a brand-typography wordmark on `section.lead`
slides ; no institutional logo file is bundled (trademarks remain
the institution's property and aren't redistributable under
BSD-3-Clause).

If you have the right to use the official logotype in your deck,
supply your own image via the `--ihes-logo` CSS variable :

```markdown
<!-- _class: lead -->
<!-- _style: "--ihes-logo: url(/path/to/your/logo.svg)" -->

# Title here
## Subtitle here
```

Official logo source : https://www.ihes.fr (institutional press contact).
