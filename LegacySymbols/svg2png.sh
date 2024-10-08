#!/bin/bash

# Converts all the SVG images to PNG with an AliceBlue background.
#  This directory has a .gitignore to ignore the output directory.
#
# Script takes about eight minutes to run.

[ ! -d PNG ] && mkdir PNG

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
      pngname="`echo ${filename} |sed -e s?"\.svg$"?".png"?`"
      echo "Converting glyph U+${UNICODE} to PNG"
      if [ `echo $pngname |grep -c "^1FBF"` -eq 1 ]; then
          inkscape -z -w 400 -h 800 "${filename}" -e "${pngname}"
      else
          inkscape -z -w 544 -h 800 "${filename}" -e "${pngname}"
      fi
      convert "${pngname}" -background AliceBlue -alpha remove -alpha off \
        "../PNG/${pngname}"
      rm -f "${pngname}"
      sleep 1
    else
      echo "SVG for glyph U+${UNICODE} not found."
    fi
  done
done
for a in 0 1 2 3 4 5 6 7 8 9 A B C F; do
  for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
    UNICODE="1FB${a}${b}"
    filename="`getAltFileName ${UNICODE}`"
    if [ $? -eq 0 ]; then
      pngname="`echo ${filename} |sed -e s?"\.svg$"?".png"?`"
      echo "Converting alt glyph U+${UNICODE} to PNG"
      inkscape -z -w 800 -h 800 "${filename}" -e "${pngname}"
      convert "${pngname}" -background AliceBlue -alpha remove -alpha off \
        "../PNG/${pngname}"
      rm -f "${pngname}"
      sleep 1
    else
      echo "SVG for alt glyph U+${UNICODE} not found."
    fi
  done
done

for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
  UNICODE="1FBA${b}"
  filename="`getAltTwoFileName ${UNICODE}`"
  if [ $? -eq 0 ]; then
    pngname="`echo ${filename} |sed -e s?"\.svg$"?".png"?`"
      echo "Converting alt2 glyph U+${UNICODE} to PNG"
      inkscape -z -w 544 -h 800 "${filename}" -e "${pngname}"
      convert "${pngname}" -background AliceBlue -alpha remove -alpha off \
        "../PNG/${pngname}"
      rm -f "${pngname}"
      sleep 1
  else
    echo "SVG for alt2 glyph U+${UNICODE} Not Found"
  fi
done

for b in 0 1 2 3 4 5 6 7 8 9 A B C D E F; do
  UNICODE="1FBA${b}"
  filename="`getAltThreeFileName ${UNICODE}`"
  if [ $? -eq 0 ]; then
    pngname="`echo ${filename} |sed -e s?"\.svg$"?".png"?`"
      echo "Converting alt3 glyph U+${UNICODE} to PNG"
      inkscape -z -w 800 -h 800 "${filename}" -e "${pngname}"
      convert "${pngname}" -background AliceBlue -alpha remove -alpha off \
        "../PNG/${pngname}"
      rm -f "${pngname}"
      sleep 1
  else
    echo "SVG for alt3 glyph U+${UNICODE} Not Found"
  fi
done

popd
