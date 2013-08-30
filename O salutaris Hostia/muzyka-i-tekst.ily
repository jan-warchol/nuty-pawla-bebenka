\version "2.17.3"

\bookOutputName "o-salutaris-hostia"

\header	{
  title = "O salutaris Hostia"
  poet = ""
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \key d \minor
  \time 3/4
  a2 g8 g
  g2 c4
  bes4.( a8) g4
  a2.
  a4 g f
  g2 c4
  bes( a) g
  a2.
  d2 bes4
  c2 g8 a
  bes4.( a8) g4
  a2 d,8(e)
  f2 a4
  g4.( f8) e4
  d4.( f8) e4
  d2.
  \bar "||"
  \bar "|."
}
melodiaAltu = \relative f' {
  f2 e8 d
  f2 e4
  d2 d4
  d8( e f4. e8)
  f4 e d
  f2 e4
  d2 d4
  d4.( e8 f g)
  f2 f4
  e8( d e4) e8 e
  d2 d4
  f4.( e8) d4
  d2 d4
  e2 e4
  d8( c d4) c4
  d2.
  \bar "||"
  \bar "|."
}
melodiaTenorow = \relative f {
  d'4 d a
  c4.( bes8) a4
  g8( a bes4) bes
  a4.( g8 a4)
  d4 d a
  c4.( bes8) a4
  g8( a bes4) bes
  a2.
  bes8( a bes c) d( c)
  c4.( bes8) c c
  bes2 d8( c)
  d2 a4
  bes2 bes8( a)
  g2 a4
  bes2 g4
  a2.
  \bar "||"
  \bar "|."
}
melodiaBasow = \relative f {
  d4 d d
  d2 d4
  g,2 bes8( c)
  d2.
  d4 d d
  d2 d4
  g,2 bes8( c)
  d2( d8 c)
  bes2 bes4
  c2 c8 c
  g4.( a8) bes8( c)
  d2 d8( c)
  bes2 bes4
  c2 c4
  bes2 c4
  d2.
  \bar "||"
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
  O sa -- lu -- ta -- ris Ho -- sti -- a,
  quae cæ -- li pan -- dis o -- sti -- um:
  bel -- la pre -- munt ho -- sti -- li -- a
  da ro -- bur, fer au -- xi -- li -- um.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup {
}
zwrotkaIII = \markup {
}
zwrotkaIV = \markup {
}
zwrotkaV = \markup {
}
