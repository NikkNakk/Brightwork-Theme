#!/bin/bash
set -ueo pipefail

SASSC_OPT=('-M' '-t' 'expanded')

_COLOR_VARIANTS=('' '-dark')

SASS_DIR="${MESON_SOURCE_ROOT}/common/gtk/assets_sass"


for makecolors in "$SASS_DIR"; do
      sassc "${SASSC_OPT[@]}" "$SASS_DIR/makecolors."{scss,css}
    done

sed -e 's/@define-color ps=/PS=/' -e 's/@define-color pmred/PMRED/' -e 's/@define-color pmblue/PMBLUE/' -e 's/@define-color pmyellow/PMYELLOW/' -e 's/@define-color pmgreen/PMGREEN/' -e 's/@define-color pswarm/PSWARM/' -e 's/@define-color pmdark/PMDARK/' $SASS_DIR/makecolors.css> $SASS_DIR/colorsassets.css


DIR="${BASH_SOURCE%/*}"

. "$SASS_DIR/colorsassets.css"



echo "== Modifying Assets SVG (Remember to render assets if you changed colors)..."

sed -e 's/"$ps_color"/'"$PS/" -e 's/"$pm_red"/'"$PMRED/" -e 's/"$pm_blue"/'"$PMBLUE/" -e 's/"$pm_yellow"/'"$PMYELLOW/" -e 's/"$pm_green"/'"$PMGREEN/" -e 's/"$ps_warm"/'"$PSWARM/" -e 's/"$pm_dark"/'"$PMDARK/" $SASS_DIR/_assetssass.svg> $SASS_DIR/assets.svg


if [[ ! "$(command -v inkscape || command -v rendersvg)" ]]; then
  echo "'inkscape' or 'resvg' needs to be installed to generate the PNG."
  exit 1
fi

if [[ ! "$(command -v optipng)" ]]; then
  echo "'optipng' needs to be installed to optimize the resulting PNG."
fi

if command -v parallel >/dev/null; then
  cmd=(parallel)
else
  cmd=(xargs -n1)
fi

mkdir -p "${MESON_SOURCE_ROOT}/common/gtk/assets"

"${cmd[@]}" ./render-asset.sh < "${MESON_SOURCE_ROOT}/common/gtk/assets_sass/assets.txt"
