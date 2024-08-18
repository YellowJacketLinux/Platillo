Braille Patterns
================

Unicode uses the block ‘Braille Patterns’ in the code-point range `U+2800`
through `U+28FF` to encode all of the 256 possible combinations of Eight-Dot
Braille Patterns. Full coverage of this block is planned for inclusion in the
Platillo OpenType font.

Unicode code-points only specify the patterns of the dots, they do not assign
a meaning to the dots.

The code-point range `U+2800` through `U+283F` is compatible with Six-Dot
Braille Patterns, which uses two columns of three dot positions. Dot positions
One, Two, and Three are in the left column from top to bottom and Dot positions
Four, Fix, and Six are in the right column from top to bottom.

Six-Dot Braille Patterns are the most commonly used Braille patterns.

The code-point range `U+2840` through `U+28FF` provides for Eight-Dot extensions
to Braille that are sometimes used for specialized implementations, such as for
musical notation and mathematics amongst other use cases.

Eight-Dot Braille adds Dot position Seven to the bottom of the left row (under
position Three) and Dot position Eight to the bottom of the right row (under
position Six).

The Braille Dot Patterns are illustrated in [Figure One](#foo)

For Braille Pattern glyphs, this font uses large octagons to represent a dot
that is filled in and a small square to indicate a dot that is not filled in.

Most fonts use a filled in circle for the Braille pattern, a few use squares.
I chose octagons because they resemble circles and are pretty.

Some fonts draw circles that are not filled in to indicate an unfilled dot but
that is hard to discern at small font sizes. Some fonts do not have an anything
in place of a dot that is not filled in, but that can be confusing for some
people, myself included, who have less than perfect vision making it sometimes
difficult to determine which position a filled-in dot is actually in. A few
fonts use really small squares for a dot that is not filled in and I like that
approach so I followed that example.

However the first 64 code-points __do not__ have the small squares in positions
Seven and Eight as those glyphs never use position Seven and Eight, so for
compatibility with Six-Dot Braille implementations, those positions are just
left empty in the those first 64 code-points in the block.


Alternate Glyphs
----------------

Platillo is an OpenType font that supports alternate glyphs. The alternate
glyphs for Braille Patterns have a box drawn around the set of positions,
something I *personally* find useful in learning how to identify the patterns.
Hopefully my vision does not get much worse, but proper vision care is expensive
in America and the Christian Nationalists knows as the GOP would rather have
people go lame and blind than to even think of increasing what the wealthy class
must render unto Caesar. Jesus would be so proud of them...


Figure One
----------

A Visual Example of Braille Patterns.
[Skip to Text Description](#figuretext)

    ┌───┐                 ┌───┐ ┌───┐ ┌───┐ ┌───┐ ┌───┐ ┌───┐
    │1 4│                 │   │ │1  │ │  4│ │1 4│ │1  │ │1 4│
    │2 5│ The word Linux: │   │ │2  │ │2  │ │  5│ │   │ │   │
    │3 6│                 │  6│ │3  │ │   │ │3  │ │3 6│ │3 6│
    │7 8│                 │   │ │   │ │   │ │   │ │   │ │   │
    └───┘                 └───┘ └───┘ └───┘ └───┘ └───┘ └───┘
                          (Cap)  (L)   (i)   (n)   (u)   (x)

### Figure One Text Description

First, box-drawing characters are used to enclose the Arabic numerals one
through eight with the numerals placed within the box at the designated position
number used for Braille patterns.

Then, additional boxes are used to show how the word ‘Linux’ would be written
using Braille patterns, including `DOTS-6` at the beginning to indicate an
upper-case ‘L’.

The full illustrated sequence: `DOTS-6`, `DOTS-123`, `DOTS-24`, `DOTS-1345`,
`DOTS-136`, `DOTS-1346`.

Actual Unicode Braille pattern code-points were not used in the visual figure
because many people do not have suitable Braille fonts installed on their
system and when they do, they rarely look good at font sizes used in a
terminal window.
