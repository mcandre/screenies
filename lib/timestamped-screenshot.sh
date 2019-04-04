#!/bin/sh

UNAME_A="$(uname -a)"

case "$UNAME_A" in
    *Darwin*)
        SCREEN_TOOL='screencapture'
        SCREEN_FLAGS='-x'
        ;;
    *Linux*)
        SCREEN_TOOL='scrot'
        ;;
    *)
        SCREEN_TOOL='import'
        SCREEN_FLAGS='-window root'
        ;;
esac

TIMESTAMP="$(date '+%Y-%m-%dT%H-%M-%S')"

"$SCREEN_TOOL" $SCREEN_FLAGS "${TIMESTAMP}.png"
