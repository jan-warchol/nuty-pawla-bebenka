%{TODO:
  W kilku miejscach jest akord sus4,
  który rozwiązuje się na zwykły z tercją.
  Zapisywać to czy nie robić bałaganu?
  A może w ogóle nie zapisywać do tego akordów?
  Posłuchać samemu.
%}

\version "2.17.3"

\include "format-b5.ly"

\header	{
  title = "Witaj Pokarmie"
  % śpiewnik Jagodyński, strona 106
  % (http://www.dbc.wroc.pl/dlibra/publication?id=10057&tab=3)
  poet = "słowa: XVII wiek"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}

%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
  \repeat volta 2 {
    e4 fis8 g8 fis4. g8 |
    e8 fis8 g8 a8 g4 fis4 |
  }
  % 5
  g4 a8 b8 a4a8 b8 |
  c4 b8 a8 g4 fis4 |
  g4 a8 g8 fis4.( g16[ fis16]) |
  e1
  \bar "|."
}
melodiaAltu = \relative f' {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
  \repeat volta 2 {
    e4 e8 e8 e4 d |
    e8 e8 e8 e8 d4 d4 |
  }
  % 5
  d4 d8 d8 g4 fis8 fis8 |
  e4 e8 e8 d4 d4 |
  d4 d8 d8 e4( d4) |
  e1
  \bar "|."
}
melodiaTenorow = \relative f {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
  \repeat volta 2 {
    b4 b8 b b4 d |
    c8 c8 c8 c8 a4 a4 |
  }
  % 5
  b4 b8 b8 a4 a8 a8 |
  a4 a8 a8 a4 a4 |
  b4 b8 b8 b2 |
  b1
  \bar "|."
}
melodiaBasow = \relative f {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
  \repeat volta 2 {
    e4 e8 e8 b4 b4 |
    c8 c8 c8 c8 d4 d4 |
  }
  % 5
  g,4 g8 g8 d'4 d8 d8 |
  a4 b8 c8 d4 d4 |
  g,4 g8 a8 b2 |
  e1
  \bar "|."
}
akordy = \chordmode {
  \repeat volta 2 {
    e2:m b:m c d
  }
  g2 d a:m d
  g2 b:m e1:m
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1."
  Wi -- taj Po -- kar --
  \tweak #'X-offset #-1.5 mie, |
  \tweak #'X-offset #-3 w_któ -- rym nie -- zmie --
  \tweak #'X-offset #-0.7 LyricText
  rzo -- ny |
  wi -- taj na -- po -- ju zu -- |
  peł -- nie ga -- szą -- cy |
  u -- mysł pra -- gną -- | cy.
}
drugiWers = \lyricmode {
  nie -- ba i zie -- mie |
  Twór -- ca jest zam -- knio --
  \tweak #'X-offset #-0.75 ny, |
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  "Witaj krynico wszystkiego dobrego"
  "Gdy bowiem w sobie masz Boga samego"
  "Znasz ludziom wszystkie jego wszechmocności"
  "Niesiesz godności."
}
zwrotkaIII = \markup \column {
  "Witaj z niebiosów manno padająca"
  "Rozkoszny w sercu naszym smak czyniąca:"
  "Wszystko na świecie co jedno smakuje"
  "W tym się najduje."
}
zwrotkaIV = \markup \column {
  "Witaj rozkoszne z ogrodu rajskiego"
  "Drzewo owocu pełne żywiącego:"
  "Kto Cię skosztuje śmierci się nie boi"
  "Choć nad nim stoi."
}
zwrotkaV = \markup \column {
  "Witaj Jedyna serc ludzkich radości"
  "Witaj strapionych wszelka łaskawości"
  "Ciebie dziś moje łzy słodkie szukają"
  "K'Tobie wołają."
}


%--------------------------------CAŁOŚĆ

\score {
  \new ChoirStaff <<
    % \new ChordNames { \germanChords \akordy }
    \new Staff = sopran {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaSopranu
      }
    }
    \new Lyrics \lyricsto sopran \tekstSopranu
    \new Lyrics \lyricsto sopran \drugiWers

    \new Staff = alt {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaAltu
      }
    }
    \new Lyrics \lyricsto alt \tekstAltu
    \new Lyrics \lyricsto alt \drugiWers

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \dynamicUp
        \tupletUp
        \melodiaTenorow
      }
    }
    \new Lyrics \lyricsto tenor \tekstTenorow
    \new Lyrics \lyricsto tenor \drugiWers

    \new Staff = bas {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \tupletUp
        \melodiaBasow
      }
    }
    \new Lyrics \lyricsto bas \tekstBasow
    \new Lyrics \lyricsto bas \drugiWers
  >>

  \layout {
    \compressFullBarRests
    \override NoteHead #'style = #'altdefault
    \context {
      \Staff
      \consists "Ambitus_engraver"
    }
    \context {
      \Lyrics
      \override LyricSpace #'minimum-distance = #0.7
      \override VerticalAxisGroup
      #'nonstaff-relatedstaff-spacing #'basic-distance = #5
      %\override VerticalAxisGroup
      %#'nonstaff-unrelatedstaff-spacing #'padding = #0.9
    }
  }
}

\markup {
  \fill-line {
    \scale #powiekszenie-zwrotek {
      \null

      \column {
        \line {
          \bold
          "2."
          \odstepOdNumeruDoZwrotki
          \zwrotkaII
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "3."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIII
        }
        \odstepMiedzyZwrotkami
      }

      \null

      \column {
        \line {
          \bold
          "4."
          \odstepOdNumeruDoZwrotki
          \zwrotkaIV
        }
        \odstepMiedzyZwrotkami
        \line {
          \bold
          "5."
          \odstepOdNumeruDoZwrotki
          \zwrotkaV
        }
        \odstepMiedzyZwrotkami
      }

      \null
    }
  }
}