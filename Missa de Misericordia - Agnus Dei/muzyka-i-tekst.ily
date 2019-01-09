\version "2.21.0"

\bookOutputName "missa-de-misericordia-agnus-dei"

\header	{
  title = "Agnus Dei"
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
  \repeat volta 3 {
    f4. g8 as4.( bes8)
    g2. es4
    f4 f8 g8 as4. bes8
    g2 g
    c4 c bes8 ( as) bes4
    bes4. bes8 as( g) as4
  }
  \alternative {
    {
      as4.( g8 f4 bes8 as)
      g1
    }
    {
      as4.( g8 f4 es )
      f1
    }
  }
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  \repeat volta 3 {
    f4 es f2
    f2( g4) c,4
    c f8 es f4 f
    f2 g2
    es4. es16( f) g4 es
    des8( es) des4 f f
  }
  \alternative {
    {
      es2 des4. des16( es
      f4. g8) e2
    }
    {
      es2( des4 c)
      c1
    }
  }
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  \repeat volta 3 {
    c'4. c8 es4( des)
    c4.-\shape #'((0 . -1.3)(0.5 . -1)(-0.5 . -0.3)(-0.4 . -0.7))
    ( bes16 as g4) g
    as8( bes) c8 c es4 des
    c4.( bes16 as) g2
    as4 as bes4. bes8
    bes4 bes c4. c8
  }
  \alternative {
    {
      c2( bes4 des)
      c1
    }
    {
      c4-\shape #'((0 . -1)(0.2 . -0.5)(0 . 0)(-0.1 . 0))
      ( bes4. as8 g4)
      f1
    }
  }
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  \repeat volta 3 {
    f4 es des4.( bes8)
    c2. c4
    f,4 f'8 es des4. bes8
    c2 c
    as4 as g4. g8
    ges4 ges f f8( g)
  }
  \alternative {
    {
      as2( bes)
      c1
    }
    {
      as2( bes4 c)
      f,1
    }
  }
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  \set stanza = "  1,2."
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis.
  pa -- cem.
}

tekstSopranu = \tekst
tekstAltu = \lyricmode {
  A -- gnus De -- i,
  qui tol -- lis pec -- ca -- ta mun -- di,
  \set stanza = "  1,2."
  mi -- se -- re -- re, mi -- se -- re -- re no -- bis, no -- bis.
  pa -- cem.
}
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
  \repeat unfold 12 \skip 4
  \set stanza = "3."
  do -- na no -- bis,
  do -- na no -- bis
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
