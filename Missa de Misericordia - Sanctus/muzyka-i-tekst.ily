\version "2.21.0"

\bookOutputName "missa-de-misericordia-sanctus"

\header	{
  title = "Sanctus"
  subtitle = \markup \italic "Missa de Misericordia"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}

doted = {
  \slurDashed
  \tieDashed
  \set melismaBusyProperties = #'()
}
solid = {
  \slurSolid
  \tieSolid
  \unset melismaBusyProperties
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
  \repeat volta 2 {
    \doted
    as4 as8~ as g4 as8 g
    f2 es4.~ es8
    \solid
    as4( bes8 c) bes4 bes
    \doted
    bes4.~ bes8 \solid as4 as8( bes)
    c2 bes4 as8 g
    f2 f4 as8( bes)
    c2 bes4 as8 g
    f2 f2
  }
}
melodiaAltu = \relative f' {
  \metrumitp
  f4 f es es
  es( des8 c16 des) c4.( es8)
  f4 g8 f es4 es
  des4. es8 f2
  \repeat volta 2 {
    \doted
    f4 f8~ f es4 es8 es
    \solid
    es4( des8 c16 des) \doted c4.( es8)
    \solid
    f4( g8 f) es4 es
    \doted
    des4.( es8) \solid f4 f8( g)
    as8( g16 f es4) f es8 es
    es4( des) f f8( g)
    as8( g16 f es4) f es8 es
    es4( des) f2
  }
}
melodiaTenorow = \relative f {
  \metrumitp
  c'4 c c c
  as2 as4.( bes8)
  c4 c8 c bes8( as) bes4
  bes4. bes8 c2
  \repeat volta 2 {
    \doted
    c4 c8~ c c4 c8 c
    as2 as4.( bes8)
    \solid
    c2 bes8( as) bes4
    \doted
    bes4.~bes8 \solid c4 c8( es)
    es4.( des16 es) des8.( c16) bes8 bes
    as4.( bes8) c4 c8( es)
    es4.( des16 es) des8.( c16) bes8 bes
    as4.( bes8) c2
  }
}
melodiaBasow = \relative f {
  \metrumitp
  f4 f es8( d) c4
  des2 as4.( g8)
  f4 g8 as g8( as) g4
  ges4. ges8 f2
  \repeat volta 2 {
    \doted
    f'4 f8~ f \solid es8( d) c8 c
    \doted
    des2 as4.( g8)
    \solid
    f4( g8 as) g8( as) g4
    \doted
    ges4.~ ges8 \solid f4 f'8( es)
    as,2 bes4 es8 es
    des4( bes) f4 f'8( es)
    as,2 bes4 es8 es
    des4( bes) f2
  }
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus
  Do -- mi -- nus De -- us Sa -- ba --
  \once \override LyricText.self-alignment-X = #-0.3
  oth.
  \set stanza = "1."
  Ple -- ni sunt
  \once \override LyricText.self-alignment-X = #-1
  cæ -- li et ter -- ra _
  glo -- ri -- a tu -- _ a.
  Ho -- san -- na in ex -- cel -- sis!
  Ho -- san -- na in ex -- cel -- sis!
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
  \repeat unfold 14 \skip 4
  \set stanza = "2."
  Be -- ne -- _ di -- ctus
  \once \override LyricText.self-alignment-X = #-0.6
  qui ve -- nit
  in no -- mi -- ne Do -- mi -- ni.
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
