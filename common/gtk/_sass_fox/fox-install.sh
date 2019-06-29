#!/bin/bash
set -ueo pipefail

USER_HOME=$(getent passwd $SUDO_USER | cut -d: -f6)


cp -r ${MESON_SOURCE_ROOT}/common/gtk/chrome ${USER_HOME}/.mozilla/firefox/*.default