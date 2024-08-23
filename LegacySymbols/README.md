Symbols for Legacy Computing
============================

The majority of these code-points are complimentary to the glyphs in the ‘Block
Elements’ block. Sixteen of the code-points are complimentary to the glyphs in
the ‘Box Drawing’ block. The rest are largely pictorial symbols that were
historically used in home computers during the era of seven- and eight-bit
bitmap fonts.

As with the Box Drawing and Block Element glyphs, I used an SVG canvas of 680
units of width by 1000 units of height. The height is standard for PostScript
outline canvases. The width is divisible by 8 (important for some glyphs) and
by 20 (important for shade glyphs) and it also gives an approximate ratio of
6x9, a not too uncommon bitmap font ratio.

This is an OpenType font, and most glyphs have an alternate style that uses a
square canvas of 1000 units in width. Some block elements just look better with
a square canvas, so that is an option.

The number forms from `U+1FBFA` to `U+1FBF9` do *not* have 1000 unit width
alternatives. Some of the pictorial symbols also *may* not.

Unfortunately Platillo is __NOT__ a monospace font and the ‘official Unicode’
space character (U+0020) is sized to match the ASCII numbers for compatibility
with the Adobe Symbol font. However, PUA code-point U+E020 is a space character
in Platillo that matches the metrics of these glyphs.

See your application documentation for instructions on how to access the
stylistic alternative if you want the square metric variant.

Box Drawing Supplements
-----------------------

The ‘Box Drawing’ block contains glyphs for vertical and horizontal connecting
glyphs. It has a few diagonal glyphs too, but they do not connect with the
vertical or horizontal connecting glyphs.

This block has diagonal ‘Box Drawing’ glyphs that *can* connect with the
vertical and horizontal glyphs from the ‘Box Drawing’ block, specifically the
thinner stroke variants.

If the connection point with the glyphs from the ‘Box Drawing’ block is to be
smooth, then due to geometry, either the stroke-width of the diagonal box
drawing supplements in the block have to be a thinner stroke-width *or* they
can use the same stroke width but then extend the straight-line from the
vertical or horizontal box-drawing glyph on one side of the stroke.

The ‘normal’ variant interfaces with the thinner ‘Box Drawing’ block smoothly
by reducing the diagonal stroke-width, and uses the 680 SVG unit glyph width.

The first variant does the same but with a 1000 SVG unit glyph width for square
grids of box-drawing glyphs.

The second variant uses the same stroke-width as the thin ‘Box Drawing’ glyphs
but at the cost of being jagged when multiple diagonal glyphs are connected
together, using the 680 SVG unit glyph width.

The third variant is like the second variant but with a 1000 SVG unit glyph
width.




