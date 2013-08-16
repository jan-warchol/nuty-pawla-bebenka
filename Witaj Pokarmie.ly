%{TODO:
  W kilku miejscach jest akord sus4,
  który rozwiązuje się na zwykły z tercją.
  Zapisywać to czy nie robić bałaganu?
  A może w ogóle nie zapisywać do tego akordów?
  Posłuchać samemu.
%}

\version "2.17.3"
#(set-global-staff-size 17)

\paper {
  indent = 0 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  system-system-spacing #'basic-distance = 16
  top-markup-spacing #'basic-distance = 6
}

\header	{
  title = \markup \column { "Witaj Pokarmie" " " }
  % śpiewnik Jagodyński, strona 106
  % (http://www.dbc.wroc.pl/dlibra/publication?id=10057&tab=3)
  poet = "słowa: XVII wiek"
  composer = "muzyka: Paweł Bębenek"
}
%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
  e4 fis8 g8 fis4. g8 |
  e8 fis8 g8 a8 g4 fis4 |
  e4 fis8 g8 fis4. g8 |
  e8 fis8 g8 a8 g4 fis4 |
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
  e4 e8 e8 e4 d |
  e8 e8 e8 e8 d4 d4 |
  e4 e8 e8 e4 d4 |
  e8 e8 e8 e8 d4 d4 |
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
  b4 b8 b b4 d |
  c8 c8 c8 c8 a4 a4 |
  b4 b8 b8 b4 d4 |
  c8 c8 c8 c8 a4 a4 |
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
  e4 e8 e8 b4 b4 |
  c8 c8 c8 c8 d4 d4 |
  e4 e8 e8 b4 b4 |
  c8 c8 c8 c8 d4 d4 |
  % 5
  g,4 g8 g8 d'4 d8 d8 |
  a4 b8 c8 d4 d4 |
  g,4 g8 a8 b2 |
  e1
  \bar "|."
}
akordy = \chordmode {
  e2:m b:m c d
  e2:m b:m c d
  g2 d a:m d
  g2 b:m e1:m
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1."
  Wi -- taj Po -- kar -- mie, |
  w_któ -- rym nie -- zmie -- rzo -- ny |
  nie -- ba i zie -- mie |
  Twór -- ca jest zam -- knio -- ny, |
  wi -- taj na -- po -- ju zu -- |
  peł -- nie ga -- szą -- cy |
  u -- mysł pra -- gną -- | cy.
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

poziomyOdstepI = \markup \hspace #1
pionowyOdstepI = \markup \vspace #1

\markup {
  \vspace #2 % żeby nie zlewało się z nutami
  \fill-line {
    \large {
      \null

      \column {
        \line {
          \bold
          "2."
          \poziomyOdstepI
          \zwrotkaII
        }
        \pionowyOdstepI
        \line {
          \bold
          "3."
          \poziomyOdstepI
          \zwrotkaIII
        }
        \pionowyOdstepI
      }

      \null

      \column {
        \line {
          \bold
          "4."
          \poziomyOdstepI
          \zwrotkaIV
        }
        \pionowyOdstepI
        \line {
          \bold
          "5."
          \poziomyOdstepI
          \zwrotkaV
        }
        \pionowyOdstepI
      }

      \null
    }
  }
}