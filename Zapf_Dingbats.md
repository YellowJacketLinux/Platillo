Zapf Dingbats
=============

In 1977, Hermann Zapf created a large set of sketches of glyphs. In 1978, ITC
chose 360 of them to license into three series of glyphs: 100 series, 200
series, and the 300 series. Each series contains 120 glyphs. These glyphs are
shown in the ITC magazine ‘U&lc Volume Five, Number Two, June 1978’ on pages
37 through 40. An interesting quote from page 38:

> __Welcome to the Dingbat Revival!__ Decades of absence from the printed page
> was a natural reaction to the tasteless overuse of dingbats that inevitably
> led to a dearth of dingbat designs.

I wonder if the same will happen with Emoji glyphs...

With the advent of Adobe PostScript font, Adobe created a PostScript Type 1
font called ‘ITC Zapf Dingbats’ that contained a subset of the Zapf Dingbats
collection using dingbats from all three series, probably based at least
partially on the popularity of the glyphs in typesetting.

‘ITC Zapf Dingbats’ was *not* included in the collection of 13 fonts known as
‘PostScript Level 1’ that was guaranteed to be made available on PostScript
Level 1 printers, but it was included in the collection of 14 fonts known as
the ‘PDF Standard 14 fonts’ guaranteed to be available to PDF readers and is
just the ‘PostScript Level 1’ collection plus ‘ITC Zapf Dingbats’.


The 8-bit font ‘ITC Zapf Dingbats’ is included in the collection of 35 fonts
known as ‘PostScript Level 2’ that was guaranteed to be made available on
PostScript Level 2 printers.

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
interestingly, it is missing some of them. I can not afford to buy the series of
six fonts to properly investigate, but based upon viewing samples it does appear
that ‘Zapf Essentials’ includes at least some of the glyphs in the original Zapf
Dingbats that were left out of the 8-bit font.

The ‘Zapf Essentials’ collection also has many glyphs that were *not* part of
original Zapf Dingbats. It appears these new dingbats were in fact drawn by
Hermann Zapf for the modern era.

Hermann Zapf passed on in 2015 but his legacy will live on forever.


Platillo Implementation
-----------------------

For Platillo, the glyphs from the 8-bit font were redrawn. The metrics are
different because the vector code in the 8-bit font is under copyright and I
did not want to even look at it when creating my own vector code for the glyphs.

At large sizes, there will be visible differences to most people. At smaller
sizes, *hopefully* those differences are barely noticable.

What I did for metrics is on a `1000` by `1000` SVG grid, I placed a virtual
baseline at 780 SVG units, a virtual caps-height at 125 SVG units, and a virtual
x-height at 335 SVG units.

For glyphs that looked like they fell between the baseline and the caps-height,
I tried to have a rounded ration of 1.6 between the bottom and baseline verses
caps-height and top.

In the future, I may make some manual adjustments to the placement of the glyphs
on the 1000x1000 grid (the start point for drawing them) but for now, that is
where the metrics come from.


Software Developer Note
-----------------------

When transcoding an 8-bit encoded document to Unicode, parts of the document
that specify ‘ITC Zapf Dingbats’ as the font should be changed to specify
‘ITC Zapf Dingbats Std’ when converting those font slot numbers to Unicode so
that the document will use the *actual* ‘ITC Zapf Dingbats’ glyphs when that
font is available as many systems do have it installed.

Systems without that font can map requests to that font to Platillo if the user
wants Platillo to provide equivalent Unicode code-points. Even if of a different
typeface, most operating systems do have full coverage of all the Unicode
code-points in their default install.

