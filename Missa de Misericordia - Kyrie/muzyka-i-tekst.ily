\version "2.17.3"

\bookOutputName "missa-de-misericordia-kyrie"

\header	{
  title = "Kyrie"
  subtitle = \markup \italic "Missa de Misericordia"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
metrumitp = {
  \key f \minor
  \time 4/4
  \tempo Largo
  \partial 4
}

melodiaSopranu = \relative f' {
  \metrumitp
  f8 as
  as2 r8 c bes f
  g2. f8 g
  as2 r8 c bes f
  g2. as8( bes)
  c4. bes8 des4 c
  bes2. as8( bes)
  c4. bes8 bes4 as4
  g4( g e) f8 g
  as2 r8 c8 bes f
  g2. f8 g
  as4. g8 f8( g) es4
  f1
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  f8 f
  f4 es f f
  f2( g4) f8 f
  f4 es f f
  f4( g2) f8( g16 f)
  es4 es ges8( f) es4
  es4.( f8 g4) f8( g16 f)
  es4 es ges8( f) es4
  c2. f8 f
  f4 es f f
  f2( g4) f8 f
  f4 es des8( c) bes4
  c1
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  r4
  r4 c' des2
  bes4 c2.
  r4 c des des
  c4.( bes16 as g4) f8( g)
  as4 bes bes as
  bes2. f8( g)
  as4 bes8( c) des4 c
  c4.( bes16 as g4) c8 c
  c4 c des2
  bes4 c2 c8 c
  c4 c8( bes8) as4 g
  f1
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  r4
  f4.( es8 des4) bes
  c2. r4
  f4.( es8) des4 bes
  c2. f8( es)
  as,4 g ges as
  es'2. f8( es)
  as,4 g ges as
  c2. f8 f
  f4. es8 des4 bes
  c2. f8 f
  f4 es des c
  f,1

  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekstSopranu = \lyricmode {
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
}
tekstAltu = \tekstSopranu

tekstTenorow = \lyricmode {
  e -- le -- i -- son,
  e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
}
tekstBasow = \lyricmode {
  Ky -- ri -- e e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Chri -- ste e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son,
  Ky -- ri -- e e -- le -- i -- son.
}

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}
