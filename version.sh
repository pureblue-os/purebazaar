#!/bin/sh

VERSION=0.5.11
DATE_PART="$(date +%Y%m%d)"

# Determine git root directory
GIT_DIR="${MESON_SOURCE_ROOT:-.}"

# Get git commit hash
GIT_COMMIT="$(git -C "$GIT_DIR" rev-parse --short HEAD 2>/dev/null)"

if [ -z "$GIT_COMMIT" ]; then
    echo "ERROR: Failed to get git commit hash" >&2
    exit 1
fi

echo "${VERSION}.pure.${DATE_PART}.${GIT_COMMIT}"
