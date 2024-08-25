#!/bin/bash

# Many graphical browsers do not properly sort HEX.
# This script will touch the SVG files in proper order so that sort by
# modification date will properly sort by HEX allowing the glyphs to easily
# be checked against official Unicode table.
#
# Script takes about eight minutes to run.

function getFileName {
  if [ `ls *.svg |grep -v "\-alt" |grep -c "^${1}"` -gt 0 ]; then
    echo "`ls *.svg |grep -v "\-alt" |grep "^${1}" |head -1`"
  else
    return 1
  fi
}

function getAltFileName {
  if [ `ls *alt.svg |grep -c "^${1}"` -gt 0 ]; then
    echo "`ls *alt.svg |grep "^${1}" |head -1`"
  else
    return 1
  fi
}

function getAltTwoFileName {
  if [ `ls *alt2.svg |grep -c "^${1}"` -gt 0 ]; then
    echo "`ls *alt2.svg |grep "^${1}" |head -1`"
  else
    return 1
  fi
}

function getAltThreeFileName {
  if [ `ls *alt3.svg |grep -c "^${1}"` -gt 0 ]; then
    echo "`ls *alt3.svg |grep "^${1}" |head -1`"
  else
    return 1
  fi
}

pushd SVG
for a in 0 1 2 3 4 5 6 7 8 9 A B C F; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    UNICODE="1FB${a}${b}"
    filename="`getFileName ${UNICODE}`"
    if [ $? -eq 0 ]; then
      echo "Adjusting timestamp on glyph U+${UNICODE}"
      touch "${filename}"
      sleep 1
    else
      echo "File for code-point U+${UNICODE} Not Found"
    fi
  done
done
for a in 0 1 2 3 4 5 6 7 8 9 A B C F; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    UNICODE="1FB${a}${b}"
    filename="`getAltFileName ${UNICODE}`"
    if [ $? -eq 0 ]; then
      echo "Adjusting timestamp on alt glyph U+${UNICODE}"
      touch "${filename}"
      sleep 1
    else
      echo "File for alt code-point U+${UNICODE} Not Found"
    fi
  done
done

for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
  UNICODE="1FBA${b}"
  filename="`getAltTwoFileName ${UNICODE}`"
  if [ $? -eq 0 ]; then
    echo "Adjusting timestamp on alt2 glyph U+${UNICODE}"
    touch "${filename}"
    sleep 1
  else
    echo "File for alt2 code-point U+${UNICODE} Not Found"
  fi
done

for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
  UNICODE="1FBA${b}"
  filename="`getAltThreeFileName ${UNICODE}`"
  if [ $? -eq 0 ]; then
    echo "Adjusting timestamp on alt3 glyph U+${UNICODE}"
    touch "${filename}"
    sleep 1
  else
    echo "File for alt3 code-point U+${UNICODE} Not Found"
  fi
done

popd
