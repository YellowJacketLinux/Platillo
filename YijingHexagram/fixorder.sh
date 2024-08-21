#!/bin/bash

# Many graphical browsers do not properly sort HEX.
# This script will touch the SVG files in proper order so that sort by
# modification date will properly sort by HEX allowing the glyphs to easily
# be checked against official Unicode table.
#
# Script takes about one minute and 4 seconds to run.

function getFileName {
  if [ `ls *.svg |grep -c "^${1}-"` -gt 0 ]; then
    #echo "${1} found"
    echo "`ls *.svg |grep "^${1}-" |head -1`"
  else
    return 1
  fi
}

pushd SVG
for a in C D E F; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    UNICODE="4D${a}${b}"
    filename="`getFileName ${UNICODE}`"
    if [ $? -eq 0 ]; then
      echo "Adjusting timestamp on glyph U+25${a}${b}"
      touch "${filename}"
      sleep 1
    else
      echo "File for code-point U+${UNICODE} Not Found"
    fi
  done
done

popd
