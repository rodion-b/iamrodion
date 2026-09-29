#!/bin/sh
# Renders tools/share-card.html into og.jpg (1200x630), the picture shown when a link to the site is posted.
# Needs Google Chrome and an internet connection (for the fonts). Run from anywhere: sh tools/render-share-card.sh
set -e
cd "$(dirname "$0")/.."
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
TMP=$(mktemp -d)
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --force-device-scale-factor=1 \
  --window-size=1200,630 --virtual-time-budget=6000 \
  --screenshot="$TMP/og.png" "file://$PWD/tools/share-card.html" 2>/dev/null
sips -s format jpeg -s formatOptions 88 "$TMP/og.png" --out og.jpg >/dev/null
echo "wrote og.jpg"
rm -rf "$TMP"
