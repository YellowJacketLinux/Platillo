Platillo
========

This project is a long-way from usable.

Currently this repository holds SVG files for my future use in a ‘Pi Fonts’
for various Unicode blocks that are generally not language specific.

Platillo is a name I would like to reserve for *my* packaging of the glyphs.

At this time I am not seeking contributions.

Eventually the glyphs will be imported into Fontforge where they can then be
packaged as an OpenType font using PostScript outlines (cubic Bézier curves).

The font will *probably* be released under the ‘GUST Font License’ (GFL) and
so that license applies to this repository in the present.

See the file `GUST-FONT-LICENSE.txt` and `LPPL.txt`.

Glyphs will be in sub-directories that correspond with their Unicode block and
the file names will start with the Unicode code-point in hex but without the
leading `U+` that proceeds a unicode code-point. Sometimes the name of the glyph
will follow in the file-name.


Primary Purpose
---------------

The original inspiration for this font was to provide compatibility with commom
historic 8-bit ‘Pi/Dingbat’ picture-glyph fonts that predate the common use of
of Unicode character encodings (such as UTF-8).

When a document contains 8-bit requests for the font ‘Symbol’, those glyphs
requests can be transcoded to the Unicode code-points and the specified font
changed to ‘Symbol STD’. Systems without ‘Symbol STD’ can them map ‘Symbol STD’
to ‘Platillo’ and the document will render correctly, although full metric
compatibility is __not__ a goal.

In English, the word ‘Symbol’ is phonetically identical to ‘Cymbal’ which in
Español can be translated as ‘Platillo’, hence the name of the font.

When a document contains 8-bit requests for the font ‘ITC Zapf Dingbats’, those
glyph requests can be transcoded to the Unicode code-points and the specified
font changed to ‘ITC Zapf Dingbats Std’. Systems without ‘ITC Zapf Dingbats Std’
can then map ‘ITC Zapf Dingbats Std’ to ‘Platillo’ and the document will render
correctly, although again note that full metric compatibility is __not__ a goal.

Thus when used in combination with the
[TeX Gyre Collection](https://www.gust.org.pl/projects/e-foundry/tex-gyre/index_html) of OpenType fonts, any 8-bit encoding document that specified fonts from
the ‘PostScript Level 2’ fonts can be fully transcoded to Unicode and should
render similarly to the original document intent. Note that for documents
already typeset as PostScript/PDF documents that specify those fonts, metric
compatibility is important so in such cases, the URW fonts within Ghostscript
should be used when the original Adobe fonts are not available.


Other 8-bit Fonts
-----------------

Microsoft released four commonly 8-bit dingbat fonts, ‘Webdings’ and three
different ‘Wingdings’. While I believe all the glyphs in those fonts now do
have appropriate Unicode code-points (with the exception of the Microsoft logo
in the first ‘Wingdings’ font), what ‘Platillo’ will do is put equivalent glyphs
in the Unicode ‘Private Use Areas’ (PUA) range. Applications that want the best
compatibility with those old 8-bit fonts using Platillo can map those 8-bit
requests to the compatibility PUA glyphs in Patillo and change the requested
font to ‘Platillo’. Note that this may not be what the user wants, so it should
be an application option.

In the bitmap era of the Apple Macintosh, Apple released two 8-bit dingbat
fonts, ‘Cairo’ and ‘Taliesin’, the latter of which was later renamed to
‘Mobile’

Since I know a Unicode font named ‘Cairo’ exists that is completely unrelated to
the the Apple font ‘Cairo’ (the Unicode font is for Arabic), I would suggest
that applications do nothing with requests for ‘Cairo’ and ‘Taliesin’ unless the
document uses a Mac Roman encoding. Those fonts were never (officially anyway)
released as TrueType fonts and Apple stopped shipping them with System 7.

Some but not all of those glyphs have Unicode code-points, but for best
compatibility what I am doing is putting those glyphs in the Unicode PUA so that
applications that want the best compatibility can map those 8-bit requests to
the PUA glyphs in Platillo and change the requested font to ‘Platillo’. Note
that this may not be what the user wants, so it should be an application option.


Other Glyphs
------------

In addition to the previously mentioned historic 8-bit fonts, Platillo will
contain many other Unicode code-points that typically are not associated with a
specific written natural language.


7-bit ASCII
-----------

It is my humble opinion that *every* Unicode font should include the full set of
7-bit ASCII characters. Those will be added close to the time of release.
