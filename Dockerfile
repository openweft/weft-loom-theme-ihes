# Minimal image whose sole purpose is to ship the theme stylesheets
# for downstream tool images to COPY --from=. No runtime ; the
# scratch base means the artifact is a few KB instead of a full OS.
FROM scratch

COPY marp/ /marp/
# pandoc/ and latex/ land here in V0.2

LABEL org.opencontainers.image.title="weft-loom-theme-ihes"
LABEL org.opencontainers.image.description="weft-loom institutional theme : ihes"
LABEL org.opencontainers.image.source="https://github.com/openweft/weft-loom-theme-ihes"
LABEL org.opencontainers.image.licenses="BSD-3-Clause"
