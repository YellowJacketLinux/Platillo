Box Drawing Metrics
===================

For Box Drawing glyphs, I used an SVG canvas of 680 units of width by 1000 units
of height. The height is standard for PostScript outline canvases. The width is
divisible by 8 (important for some glyphs) and by 20 (important for shade
glyphs) and it also gives an aproximate ratio of 6x9, a not too uncommon bitmap
font ratio.

This is an OpenType font, and each box-drawing glyph has an alternate style that
uses a square canvas of 1000 units in width. Some block elements just look
better with a square canvas, so that is an option.

Solid thin lines have a stroke width of 80 units, solid thick lines have a
stroke width of 140 units. The straight double-lines have a total stroke width
of 140 units to match the solid thick lines.

The thin lines also line up with U+1FBA0 through U+1FBAF in the ‘Symbols for
Legacy Computing’ Unicode block.

Unfortunately Platillo is __NOT__ a monospace font and the ‘official Unicode’
space character (U+0020) is sized to match the ASCII numbers for compatibility
with the Adobe Symbol font. However, PUA code-point U+E020 is a space character
in Platillo that matches the metrics of these glyphs.

See your application documentation for instructions on how to access the
stylistic alternative if you want the square metric variant.

