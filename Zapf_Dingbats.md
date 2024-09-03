Zapf Dingbats
=============

In 1977, Hermann Zapf created a large set of sketches of glyphs. In 1978, ITC
chose 360 of them to license into three series of glyphs: 100 series, 200
series, and the 300 series. Each series contains 120 glyphs.

With the advent of Adobe PostScript fonts, the 100 series was coded as a
PostScript Type 1 font called ‘ITC Zapf Dingbats’. Based simply on glyph count,
that font appears to contain some glyphs beyond the 120 that were originally
part of the 100 series. I do not know if the 200 series or 300 series were ever
coded as PostScript Type 1 fonts.

‘ITC Zapf Dingbats’ was *not* included in the collection of 13 fonts known as
‘PostScript Level 1’ that was guaranteed to be made available on PostScript
Level 1 printers, but it was included in the collection of 14 fonts known as
the ‘PDF Standard 14 fonts’ guaranteed to be available to PDF readers and is
just the ‘PostScript Level 1’ collection plus ‘ITC Zapf Dingbats’. It is also
included in the collection of 35 fonts known as ‘PostScript Level 2’ that was
guaranteed to be made available on PostScript Level 2 printers.

The ‘ITC Zapf Dingbats’ font is an 8-bit font, it does not use Unicode
code-points. Unicode does now have code-points for every glyph in the font, and
an updated OpenType font called ‘ITC Zapf Dingbats Std’ is a Unicode font that
includes all the glyphs from ‘ITC Zapf Dingbats’. It *might* have different
metrics for some of glyphs, sometimes font vendors that guaranteed metric
compatibility between versions of their fonts took advantage of the font name
change in the transition from 8-bit fonts to Unicode fonts to fix some existing
issues that resulted in a change in font metrics.

A collection of fonts called ‘Zapf Essentials’ also exists. That collection has
*most* of the glyphs in the 8-bit PostScript Type 1 font ‘ITC Zapf Dingbats’ but
interestingly, it is missing some of them. It also contains many glyphs that
were not part of the 8-bit font. The ‘Zapf Essentials’ collection is too
expensive for me to purchase/license to understand what the additions are, it is
*possible* that at least some of the additions are from the 200 series and 300
series of Zapf Dingbats but from what I have seen, it looks like a lot of the
glyphs are modern creations that just use ‘Zapf Dingbats’ as a brand name for
marketing purposes.


Platillo Implementation
-----------------------

For Platillo, the glyphs from the 8-bit font were redrawn. Currently the metrics
are different because the vector code in the 8-bit font is under copyright and I
did not want to even look at it when creating my own vector code for the glyphs.

At large sizes, there will be visible differences to most people. At smaller
sizes, *hopefully* those differences are barely noticable.

What I did for metrics is on a `1000` by `1000` SVG grid, I placed a virtual
baseline at 780 SVG units, a virtual caps-height at 125 SVG units, and a virtual
x-height at 335 SVG units.

For glyphs that looked like they fell between the baseline and the caps-height,
I tried to have a rounded ration of 1.6 between the bottom and baseline verses
caps-height and top.

In the future, I may try to adjust the glyphs using roughly the same node points
I used when drawing these glyphs, but matching the metrics of the 8-bit Type 1
font.

If there are glyphs in the OpenType font ‘ITC Zapf Dingbats Std’ that are not in
the 8-bit font, I *might* recreate them for Platillo. I have zero interest in
recreating any of the glyphs in the six-font ‘Zapf Essentials’ collection.


Software Developer Note
-----------------------

When transcoding an 8-bit encoded document to Unicode, parts of the document
that specify ‘ITC Zapf Dingbats’ as the font should be changed to specify
‘ITC Zapf Dingbats Std’ when converting those font slot numbers to Unicode so
that the document will use the *actual* ‘ITC Zapf Dingbats’ glyphs when that
font is available as many systems do have it installed.

Systems without that font can map requests to that font to Platillo if the user
wants Platillo to provide equivalent (but slightly different) glyphs for the
Unicode code-points. 

