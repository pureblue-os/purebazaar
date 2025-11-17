#!/bin/sh

VERSION=0.5.11
DATE_PART="$(date +%Y%m%d)"

# Determine git root directory
GIT_DIR="${MESON_SOURCE_ROOT:-.}"

# Get git commit hash
GIT_COMMIT="$(git -C "$GIT_DIR" rev-parse --short HEAD 2>/dev/null)"

if [ -n "$GIT_COMMIT" ]; then
    echo "${VERSION}.pure.${DATE_PART}.${GIT_COMMIT}"
else
    echo "${VERSION}.pure.${DATE_PART}"
fi
