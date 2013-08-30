\version "2.17.3"

\bookOutputName "o-salutaris-hostia"

\header	{
  title = "O salutaris Hostia"
  poet = ""
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

metrumitp = {
  \key d \minor
  \time 3/4
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
}

%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \metrumitp
  a2 g8 g
  g2 c4
  bes4.( a8) g4
  a2.
  a4 g f
  g2 c4
  bes( a) g
  a2.
  \doted
  d4~ d4 bes4
  c2 g8( a)
  \solid
  bes4.( a8) g4
  a2 d,8(e)
  f2 a4
  \doted
  g4.( f8) e4
  \solid
  d4.( f8) e4
  d2.
  \bar ":|."
}
melodiaAltu = \relative f' {
  \metrumitp
  f2 e8 d
  f2 e4
  d2 d4
  d8( e f4. e8)
  f4 e d
  f2 e4
  d2 d4
  d4.( e8 f g)
  \doted
  f4 ~ f f4
  \solid
  e8( d e4) \doted e8~ e
  \solid
  d2 d4
  f4.( e8) d4
  d2 d4
  \doted
  e4~ e e4
  \solid
  d8( c d4) c4
  d2.
  \bar ":|."
}
melodiaTenorow = \relative f {
  \metrumitp
  d'4 d a
  c4.( bes8) a4
  g8( a bes4) bes
  a4.( g8 a4)
  d4 d a
  c4.( bes8) a4
  g8( a bes4) bes
  a2.
  \doted
  bes8( a bes c) \solid d( c)
  c4.( bes8) \doted c~ c
  \solid
  bes2 d8( c)
  d2 a4
  bes2 bes8( a)
  \doted
  g4~ g a4
  \solid
  bes2 g4
  a2.
  \bar ":|."
}
melodiaBasow = \relative f {
  \metrumitp
  d4 d d
  d2 d4
  g,2 bes8( c)
  d2.
  d4 d d
  d2 d4
  g,2 bes8( c)
  d2( d8 c)
  \doted
  bes4~ bes bes4
  c2 c8~ c
  \solid
  g4.( a8) bes8( c)
  d2 d8( c)
  bes2 bes4
  \doted
  c4~ c c4
  \solid
  bes2 c4
  d2.
  \bar ":|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  O sa -- lu -- ta -- ris Ho -- sti -- a,
  quae cæ -- li pan -- dis o -- sti -- um:
  bel -- _ la pre -- munt ho -- sti -- li -- a
  da ro -- bur, fer __ _ au -- xi -- li -- um.
}
drugiWers = \lyricmode {
  U -- ni tri -- no -- que Do --  mi -- no
  sit sem -- pi -- ter -- na glo -- ri -- a,
  qui vi -- tam si -- ne _ ter --  mi -- no
  no -- _ bis do -- net in pa -- tri -- a.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \lyricmode {
  O sa -- lu -- ta -- ris Ho -- sti -- a,
  quae cæ -- li pan -- dis o -- sti -- um:
  bel -- _ _ _ la pre -- munt ho -- sti -- li -- a
  da ro -- bur, fer __ _ au -- xi -- li -- um.
}
tekstBasow = \tekst

drugiWersTenorow = \lyricmode {
  U -- ni tri -- no -- que Do --  mi -- no
  sit sem -- pi -- ter -- na glo -- ri -- a,
  qui _ vi -- _ tam si -- ne _ ter --  mi -- no
  no -- _ bis do -- net in pa -- tri -- a.
}

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}
