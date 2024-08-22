#!/bin/bash

# Converts all the SVG images to PNG with an AliceBlue background.
#  This directory has a .gitignore to ignore the output directory.
#
# Script takes about one minutes and four seconds to run.

[ ! -d PNG ] && mkdir PNG

pushd SVG
for a in 8 9; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    if [ -f "25${a}${b}.svg" ]; then
      echo "Converting glyph U+25${a}${b} to PNG"
      inkscape -z -w 544 -h 800 "25${a}${b}.svg" -e "25${a}${b}.png"
      convert "25${a}${b}.png" -background AliceBlue -alpha remove -alpha off \
        "../PNG/25${a}${b}.png"
      rm -f "25${a}${b}.png"
      sleep 1
    fi
  done
done
for a in 8 9; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    if [ -f "25${a}${b}-alt.svg" ]; then
      echo "Converting alt glyph U+25${a}${b} to PNG"
      inkscape -z -w 800 -h 800 "25${a}${b}-alt.svg" -e "25${a}${b}-alt.png"
      convert "25${a}${b}-alt.png" -background AliceBlue -alpha remove -alpha off \
        "../PNG/25${a}${b}-alt.png"
      rm -f "25${a}${b}-alt.png"
      sleep 1
    fi
  done
done
popd
