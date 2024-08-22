#!/bin/bash

# Many graphical browsers do not properly sort HEX.
# This script will touch the SVG files in proper order so that sort by
# modification date will properly sort by HEX allowing the glyphs to easily
# be checked against official Unicode table.
#
# Script takes about one minutes and four seconds to run.

pushd SVG
for a in 8 9; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    echo "Adjusting timestamp on glyph U+25${a}${b}"
    [ -f "25${a}${b}.svg" ] && touch "25${a}${b}.svg"
    sleep 1
  done
done
for a in 8 9; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    echo "Adjusting timestamp on alt glyph U+25${a}${b}"
    [ -f "25${a}${b}-alt.svg" ] && touch "25${a}${b}-alt.svg"
    sleep 1
  done
done
popd
