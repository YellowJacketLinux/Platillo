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

If the connection with the vertical and horizontal lines of the glyphs from the
‘Box Drawing’ block is to be smooth, there are basically two options:

1) Continue the straight edge of one side of the vertical / horizontal box drawing
   glyph that the diagonal glyph will be horizontally or vertically adjacent to,
   allowing the stroke-width of the diagonal line to match the stroke-width from
   the vertical / horizontal box drawing glyph. The downside is that using multiple
   diagonal glyphs to make a long diagonal line then results in some breaks in the
   line.

2) Allow the stroke-width of the diagonal line to be different than the
   stroke-width of the vertical / horizontal box drawing glyphs. This works fairly
   well when the box-drawing grid has a square aspect ratio for cells in the grid
   but it results in a stroke-width that changes if the box-drawing grid does not
   have a square aspect ratio for cells in the grid.

For the ‘normal’ variant of the diagonal box-drawing glyphs, I chose the first
option so that the diagonal lines would both be straight and have an 80 SVG unit
stroke-width. This variant has glyphs with a 680 SVG unit width.

For the ‘alt’ variant, the same was done but using the square aspect ratio for the
glyph. This variant has glyphs with a 1000 SVG unit width.

There is an ‘alt2’ variant that takes the second approach but with the non-square
aspect ratio (680 SVG unit width) and thus the stroke-width of the diagonals
changes, and there is an ‘alt3’ variant that takes the second approach but with a
square aspect ratio (1000 SVG unit width) so that the stroke-width does not change,
but note that it is different than the stroke-width in the horizontal and vertical
box-drawing glyphs.


UNFINISHED
----------

Glyphs for `U+1FBB0` through `U+1FBCA` have not yet been created. Some of these
glyphs (`U+1FBB0` through `U+1FBBC`) are symbols from the Apple II era ‘MouseText’
glyphs primarily used to allow GUI applications on computers from that era without
a heavy graphics card. Some of those ‘MouseText’ glyphs have counterparts in other
Unicode blocks, such as the arrows, that I would like the glyphs here to match.

For some of the other glyphs in that unfinished range, I would *like* to find the
legacy context from which they come from just in case such context impacts how to
best draw the glyphs.

### MouseText Notes

MouseText mode in the Apple II computers had a filled in bitmap Apple logo at
`0x40` and an outline Apple logo at `0x41`. Those glyphs have no Unicode equivalent
as Unicode does not like to give code-points for trademarked glyphs. However, the
PUA code-point `U+F8FF` is commonly used for the filled-in Apple logo, although
that code-point does not always produce an Apple logo. As far as I know, there is
not a PUA code-point commonly used for an outline Apple logo.

Thus full Unicode compatibility with MouseText is not possible, although one can
map both `0x40` and `0x41` to `U+F8FF` when transcoding an Apple II 8-bit MouseText
encoded document to Unicode, and even if those character slots were used, they will
*sometimes* at least be rendered as the Apple logo.
