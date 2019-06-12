#!/bin/bash
set -ueo pipefail

RENDER_SVG="$(command -v rendersvg)" || true
INKSCAPE="$(command -v inkscape)" || true
OPTIPNG="$(command -v optipng)" || true

SRC_FILE="${MESON_SOURCE_ROOT}/common/gtk/assets_sass/assets.svg"
ASSETS_DIR="${MESON_SOURCE_ROOT}/common/gtk/assets"

i="$1"

echo "Rendering '$ASSETS_DIR/$i.png'"
if [[ -n "${RENDER_SVG}" ]]; then
  "$RENDER_SVG" --export-id "$i" \
                "$SRC_FILE" "$ASSETS_DIR/$i.png"
else
  "$INKSCAPE" --export-id="$i" \
              --export-id-only \
              --export-png="$ASSETS_DIR/$i.png" "$SRC_FILE" >/dev/null
fi
if [[ -n "${OPTIPNG}" ]]; then
  "$OPTIPNG" -o7 --quiet "$ASSETS_DIR/$i.png"
fi

echo "Rendering '$ASSETS_DIR/$i@2.png'"
if [[ -n "${RENDER_SVG}" ]]; then
  "$RENDER_SVG" --export-id "$i" \
                --dpi 192 \
                --zoom 2 \
                "$SRC_FILE" "$ASSETS_DIR/$i@2.png"
else
  "$INKSCAPE" --export-id="$i" \
              --export-id-only \
              --export-dpi=192 \
              --export-png="$ASSETS_DIR/$i@2.png" "$SRC_FILE" >/dev/null
fi
if [[ -n "${OPTIPNG}" ]]; then
  "$OPTIPNG" -o7 --quiet "$ASSETS_DIR/$i@2.png"
fi
