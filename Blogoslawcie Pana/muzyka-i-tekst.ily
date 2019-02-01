\version "2.21.0"

\bookOutputName "blogoslawcie-pana"

\header	{
  title = "Błogosławcie Pana wszystkie Jego dzieła"
  poet = "słowa: Paula Siewak OCPA"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA

Key = \key d \minor

Time = {
  \tempo 4=60
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
  \partial 4
}

SopranoMusic = \relative f' {
  d8 e |
  f4. f8 f f g f |
  e4 d8( c) d d d8 e |
  f4 f f8 f g a |
  g4 g a8 a g8 a |
  bes4. a8 g4( f8 e) |
  f1
  \bar "|."
}
AltoMusic = \relative f' {
  d8 d |
  d4 d d8 d d d |
  c4 \pytanie NoteHead "w niektórych źródłach jest c" #'(2 . 2) d4 c8 bes8 bes8 bes8 |
  d4 d d8 d d16( e) f8 |
  e4 d8( e) f f f8 f |
  f4. f8 e2 |
  e2( d)
  \bar "|."
}
TenorMusic = \relative f {
  a8 a |
  a( g) a( f) bes bes bes a |
  g4 g g8 g g16( f) g( bes) |
  a4 a bes8 bes d d |
  c4 c c8 c c c |
  \pytanie NoteHead "w niektórych źródłach jest d" #'(2 . 1) c4. d8 c2 |
  bes4( a8 g a2)
  \bar "|."
}
BassMusic = \relative f {
  d8 d |
  d4 c bes8 bes bes bes |
  c4 c g8 g g8 g |
  d'4 c bes8 bes bes bes |
  c4 c f8 f f8 f |
  g,4. g8 c2 |
  d1
  \bar "|."
}
akordy = \chordmode {
  d4:m d2:m bes c
  g:m d4:m d:m7 bes2 c
  f g:m7 c bes d:m
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
  Bło -- go -- sław -- cie Pa -- na
  wszy --
  \tweak LyricText.self-alignment-X #-0.5 stkie
  \tweak LyricText.X-offset #0 Je -- go dzie --
  \tweak self-alignment-X #-0.8 ła,
  któ -- re by nie kwi -- tły
  gdy -- by nie cier -- pie -- nie,
  bło -- go -- sław -- cie Pa -- na.
}

SopranoLyrics = #(if (not TwoVoicesPerStaff) tekst )
AltoLyrics = #(if (not TwoVoicesPerStaff) tekst )
TenorLyrics = #(if (not TwoVoicesPerStaff) tekst )
BasLyrics = #(if (not TwoVoicesPerStaff) tekst )

VerseOne = #(if TwoVoicesPerStaff tekst )

zwrotkaII = \markup \column {
  "Błogosławcie Pana wszystkie łzy i żale,"
  "Każda moja słabość i upokorzenie,"
  "Błogosławcie Pana."
}
zwrotkaIII = \markup \column {
  "Błogosławcie Pana wszystkie moje rany,"
  "Na które Duch Święty staje się balsamem,"
  "Błogosławcie Pana."
}
zwrotkaIV = \markup \column {
  "Niech Cię błogosławią wszystkie me niemoce,"
  "Ból skrzętnie skrywany po bezsennej nocy,"
  "Niech Cię błogosławią."
}
zwrotkaV = \markup \column {
  "Błogosławcie Pana, że mu ufam jeszcze,"
  "Że mnie wciąż uzdrawia łaski Swojej deszczem,"
  "Błogosławcie Pana."
}

dalszeZwrotki = \markuplist {
  \zwrotkaII
  \zwrotkaIII
  \zwrotkaIV
  \zwrotkaV
}

numerZwrotki = #2
