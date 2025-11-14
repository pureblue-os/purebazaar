#!/bin/sh

INSTR="$1"

VERSION=0.5.11
PURE_SUFFIX=".pure.$(date +%Y%m%d)"

case "$INSTR" in
    get-vcs)
        VCS_VERSION="$(git -C "$MESON_SOURCE_ROOT" describe --always --dirty)"
        if [ -n "$VCS_VERSION" ]; then
            echo "${VERSION}${PURE_SUFFIX} (vcs=${VCS_VERSION})"
        else
            echo "${VERSION}${PURE_SUFFIX}"
        fi
        ;;
    get-version)
        echo "${VERSION}${PURE_SUFFIX}"
        ;;
    *)
        echo invalid arguments 1>&2
        exit 1
        ;;
esac
