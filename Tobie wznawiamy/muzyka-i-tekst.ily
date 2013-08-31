\version "2.17.3"

\bookOutputName "tobie-wznawiamy"

\header	{
  title = "Tobie wznawiamy, Panno"
  poet = "tekst tradycyjny"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
metrumitp = {
  \key d \major
  \time 4/4
  \tempo ""
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
}
melodiaSopranu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    fis4 e8 fis g4. g8
    a8 g fis d e4 e
  }
  g4 a8 g fis( e) fis4
  d8 cis d e fis4 e
  a4 g16( fis) e( d) e2
  d1
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    d4 d8 d d( e) d4
    d8 d d d d( b) d( cis)
  }
  d4 d8 d d( b16 cis) d8( cis)
  b b b b16( cis) d4. cis8
  fis8( e) d8 d d4( cis8 b16 cis)
  d1
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  \repeat volta 2 {
    a4 a8 a d8( cis) b4
    a8 a a b a4 a
  }
  b4 b8 b fis4 fis
  g8 g g g a8( b) a4
  a b8 b a4.( b8)
  c4( b8 a16 g a2)
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  \repeat volta 2 {
    d4 d8 d e4 e
    fis8 fis fis g a4 a,
  }
  g4 g8 a b4 b8( a)
  g8 g g g d'4 a4
  d4 g8 g a4( a,)
  g2( d')
  \bar "|."
}
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
  To -- bie  wzna --
  \once \override LyricText #'self-alignment-X = #-0.8
  wia -- my,
  Pan --
  \once \override LyricText #'self-alignment-X = #-0.4
  no, nad wy -- mo -- wę
  któ --
  \once \override LyricText #'self-alignment-X = #1
  raś
  \once \override LyricText #'self-alignment-X = #0.5
  w_te sło -- wa
  by -- ła u -- ra -- czo -- na:
  bądź po -- zdro -- wio -- na.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
  u --
  \once \override LyricText #'self-alignment-X = #0.5
  przej -- mym
  \once \override LyricText #'self-alignment-X = #-0.8
  sło -- wem
  cześć
  \once \override LyricText #'self-alignment-X = #-0.7
  Ga -- bri -- e -- lo -- wę,
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers

% tekst pozostałych zwrotek w wersji staropolskiej
% z "Dostateczny śpiewnik kościelny i domowy wraz z książką modlitewną" 1882 r.

zwrotkaII = \markup \column {
  "U Ciebie jednej niebieskie są dary,"
  "Któremi Cię Bóg obdarzył bez miary:"
  "Tyś napełniona łaską pożądaną,"
  "Od Boga daną."
}
zwrotkaIII = \markup \column {
  "Pan z Tobą, Ciebie przed czasy wszystkiemi,"
  "Przeznaczył Sobie przybytkiem na ziemi:"
  "Zkąd Cię do nieba przyniósł nad obłoki,"
  "Na tron wysoki."
}
zwrotkaIV = \markup \column {
  "Nad inne panny, które zachowały"
  "Swe Bogu śluby, masz przywilej cały:"
  "Z białych głów żadna bez wady wszelakiej,"
  "Czci nie ma takiej."
}
zwrotkaV = \markup \column {
  "Dla tego słusznie Ciebie wychwalamy,"
  "I Twej u Syna pomocy żądamy,"
  "By nam odpuścił z Twej świętej zasługi,"
  "Bóg nasze długi."
}
