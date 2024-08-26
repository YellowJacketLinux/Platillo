Symbols for Legacy Computing Supplement
=======================================

Until either complete or I start importing glyphs into FontForge, all work on
this block will take place in the ‘LegacySymbolsSupplement’ `git` branch.

This is a Unicode block that will be added in Unicode 16.0 (which should be
released shortly) covering a large group of historic symbol glyphs used in 8-bit
character encoding.

It is important for Platillo to have these glyphs for the purpose of providing
the ability to transcode historic files to a Unicode encoding, but there are a
lot of them.

Most of these glyphs are rather simplistic in nature, I will work on slowly over
time as a break from other blocks. In other words, by the time I start actually
importing the glyphs into FontForge, it is *probable* that I will not have
finished glyphs for all 686 glyphs in the block.

It is my *opinion* that the outline numbers and letters should not even have
their own code-points, that some of the glyphs belong in a dingbats block, and
that the ‘Schematic symbols’ belong in their own block.

It could be argued that ‘Game sprites’ also belong in their own block.

But alas, I do not make the rules.

However in Platillo, ‘Schematic symbols’ and ‘Game sprites’ will both be treated
a bit differently in that only square aspect ratio glyphs (1000x1000 SVG units)
will be drawn. Most of the other glyphs will have a default width of 680 SVG
units with alternate glyphs of 1000 SVG units.

The outline letters and digits, I am not sure what I will do width-wise.
