\version "2.17.3"

\bookOutputName "missa-de-misericordia-sanctus"

\header	{
  title = "Sanctus"
  subtitle = \markup \italic "Missa de Misericordia"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
metrumitp = {
  \key f \minor
  \time 4/4
  \tempo Andante
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
}

melodiaSopranu = \relative f' {
  \metrumitp
  as4 as g as8( g)
  f2 es
  as4 bes8 c bes4 bes
  bes4. bes8 as2
  as4 as8 as g4 as8 g
  f2 es2
  as4( bes8 c) bes4 bes
  bes2 as4 as8( bes)
  c2 bes4 as8 g
  f2 f4 as8( bes)
  c2 bes4 as8 g
  f2 f2
  as4 as g4 as8 g
  f2 es4. es8
  as4( bes8 c) bes4 bes
  bes4. bes8 as4 as8( bes)
  c2 bes4 as8 g
  f2 f4 as8( bes)
  c2 bes4 as8 g
  f2 f2
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  f4 f es es
  es( des8 c16 des) c4.( es8)
  f4 g8 f es4 es
  des4. es8 f2
  f4 f8 f es4 es8 es
  es4( des8 c16 des) c4.( es8)
  f4( g8 f) es4 es
  des4.( es8) f4 f8( g)
  as8( g16 f es4) f es8 es
  es4( des) f f8( g)
  as8( g16 f es4) f es8 es
  es4( des) f2
  f4 f es4 es8 es
  es4( des8 c16 des) c4. es8
  f4( g8 f) es4 es
  des4. es8 f4 f8( g)
  as8( g16 f es4) f es8 es
  es4( des) f f8( g)
  as8( g16 f es4) f es8 es
  es4( des) f2
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  c'4 c c c
  as2 as4.( bes8)
  c4 c8 c bes8( as) bes4
  bes4. bes8 c2
  c4 c8 c c4 c8 c
  as2 as4.( bes8)
  c2 bes8( as) bes4
  bes2 c4 c8( es)
  es4.( des16 es) des8.( c16) bes8 bes
  as4.( bes8) c4 c8( es)
  es4.( des16 es) des8.( c16) bes8 bes
  as4.( bes8) c2
  c4 c c4 c8 c
  as2 as4. bes8
  c2 bes8( as) bes4
  bes4. bes8 c4 c8( es)
  es4.( des16 es) des8.( c16) bes8 bes
  as4.( bes8) c4 c8( es)
  es4.( des16 es) des8.( c16) bes8 bes
  as4.( bes8) c2
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  f4 f es8( d) c4
  d2 as4.( g8)
  f4 g8 as g8( as) g4
  ges4. ges8 f2
  f'4 f8 f es8( d) c8 c
  d2 as4.( g8)
  f4( g8 as) g8( as) g4
  ges2 f4 f'8( es)
  as,2 bes4 es8 es
  des4( bes) f4 f'8( es)
  as,2 bes4 es8 es
  des4( bes) f2
  f'4 f es8( d) c8 c
  d2 as4. g8
  f4( g8 as) g8( as) g4
  ges4. ges8 f4 f'8( es)
  as,2 bes4 es8 es
  des4( bes) f4 f'8( es)
  as,2 bes4 es8 es
  des4( bes) f2
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus
  Do -- mi -- nus De -- us Sa -- ba -- oth.
  Pl -- eni sunt cæ -- li et ter -- ra
  glo -- ri -- a tu -- a.
  Ho -- san -- na in ex -- cel -- sis!
  Ho -- san -- na in ex -- cel -- sis!
  Be -- ne -- di -- ctus qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
  Ho -- san -- na in ex -- cel -- sis!
  Ho -- san -- na in ex -- cel -- sis!
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}
