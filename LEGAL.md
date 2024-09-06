LEGAL STUFF
===========

Copyright © 2024 Michael A. Peters for the Platillo Font.

See GUST-FONT-LICENSE.txt and LPPL.txt that should have accompanied this file.

I am no lawyer, not even a law school dropout, but I believe that within the
context of font glyphs that the visual result of the code that generates the
glyph is legally different intellectual property than the code that generates
the font glyph.

Even if the visual result of the code is too generic for copyright to apply or
produces an image with prior art too old for copyright to apply, there still is
an applicable copyright on the computer code that generates the visual result.

When the visual result is under applicable copyright, the owner of that
copyright may be *different* than the owner of the computer code copyright.

In the context of the ‘Platillo’ font project, ‘Copyright’ specifically refers
to the code used to generate the outline vector glyphs, such as the SVG code and
the FontForge files.

No claim of copyright is made *by me* on the visual result of the code. I do
claim copyright on the code, which I license to anyone under the previously
mentioned `GUST-FONT-LICENSE.txt` and `LPPL.txt` files that should be in this
directory.

The majority of the glyphs in this font were coded according to the Unicode
specification and are far too generic in nature for there to be an applicable
copyright on the visual result of the code.

That being said, there may be some glyphs where there is an applicable
copyright on the visual result of my code where that applicable copyright
belongs to someone else. The cases where I believe this is *possibly* an issue
are detailed below. Note that not only am I not a lawyer, but I did not even
sleep at a Holiday Inn Express last night. Ask an actual lawyer if you have
legal concerns.


Zapf Dingbats
-------------

Some glyphs in this font are heavily based upon the dingbats originally drawn by
Hermann Zapf that were included in the 8-bit PostScript font ‘ITC Zapf
Dingbats’.

Most glyphs in that font are *probably* too generic for a visual claim on
copyright to apply, but some of them are not too generic for such a claim to
quite possibly have legal merit.

A free clone of the 8-bit PostScript font ‘ITC Zapf Dingbats’ was created by URW
for the ‘Ghostscript’ project and is included in TeXLive 2024 at

    texmf-dist/fonts/type1/urw/zapfding/uzdr.pfb

In TeXLive 2024 (and on CTAN) it is licensed under the GPLv2. See the file
`COPYING` at https://ctan.org/tex-archive/fonts/urw/base35

To draw my glyphs based on the Zapf Dingbats glyphs, I specifically did not look
at the code of either the Adobe version of the font or the URW version of the
font. I created the TeX file `ZapfDingbats.tex` using the LaTeX CTAN `pifont`
package to create a visual representation of the glyphs for me to refer to when
writing my own SVG code to generate similar (although visually distinguishable
in many cases) glyphs. Not a single line of code (glyph generating or otherwise)
was copied.

Given that financially free versions of the glyphs are *already* widely
available and given that these glyphs are so important to digital typography and
the Internet that code-points for them were specifically assigned in Unicode
version 1.0, it is my *opinion* that the *visual representation* of the specific
Zapf Dingbat glyphs in the 8-bit PostScript font ‘ITC Zapf Dingbats’ belong to
the public.


Webdings and Wingdings
----------------------

Many of the glyphs in Webdings and Wingdings are *in my opinion* too generic for
a copyright to apply to the visual representation, but many are not.

Unlike the glyphs from Zapf Dingbats, I do not feel they are ubiquitous enough
to claim public ownership of the visual representation. Perhaps the glyphs from
Webdings are but I do not currently think so. They will likely have to be drawn
to be distinctively different.

I have to admit, it is *very* tempting to copy the vector code from Webdings
position `0x23` (`U+1F572`) just to be ironic...










