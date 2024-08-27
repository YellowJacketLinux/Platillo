Trademarks in Fonts
===================

Trademarked glyphs in fonts can be a touchy issue.


Apple Logo
----------

Several historic 8-bit fonts that Platillo seeks to provide compatibility with
have company logos that are trademarked.

The Apple II ‘MouseText Mode’ font included both a filled and outline version of
the trademarked Apple logo.

The bitmap Apple Macintosh ‘Taliesin’ font included both a filled and outline
version of the trademarked Apple logo.

The Apple version of the Adobe ‘Symbol’ font included a filled version of the
trademarked Apple logo.

Both Apple and Adobe often use PUA code-point `U+F8FF` for the filled version of
the Apple logo but I do not feel comfortable doing so without explicit
permission to do so in an open-source GFL/LPPL licensed font *especially* since
Adobe did not include the glyph if non-Apple versions of their ‘Symbol’ font,
indicating to me that Apple may have a specific desire to not have that glyph
available on operating systems that are not theirs.

The thought did occur to me to pull an iCarly and put a glyph of a pear at
`U+F8FF` which would be perfectly legal, but that would not be accurate.


Microsoft Logo
--------------

The historic 8-bit font ‘Wingdings’ included the trademarked Microsoft logo.
Some fonts like to encode that glyph in the PUA at `U+F000` but I do not feel
comfortable doing so without explicit permission to do so in an open-source
GFL/LPPL licensed font.


Linux Kernel ‘Tux’ Brand Character
----------------------------------

The ‘Linux Libertine’ font places a glyph of the ‘Tux’ Brand Character in the
PUA at `U+E000` and Platillo follows that precedent.

The most commonly known version of ‘Tux’ was designed by Larry Ewing who
specifically granted permission for its use with the following condition:

> Permission to use and/or modify this image is granted provided you
> acknowledge me lewing@isc.tamu.edu and The GIMP if someone asks.


NCSA Mosaic Logo
----------------

NCSA Mosaic wasn’t the first web browser, but it was the first web browser
that was easy for the end user to use and thus helped to jump-start the Internet
revolution.

Platillo pays a respectful homage to NCSA Mosaic by placing a ‘Web Client’ glyph
reminiscent of the NCSA Mosaic logo at PUA code-point `U+E003`. I *believe* the
glyph is different enough from the NCSA Mosaic logo that there should not be any
issues with using it as a generic web client glyph, especially since the last
version of NCSA Mosaic shipped in 1997. 
