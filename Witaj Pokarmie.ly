%{TODO:
  W kilku miejscach jest akord sus4, który rozwiązuje się na zwykły z tercją.
  Zapisywać to czy nie robić bałaganu?
  A może w ogóle nie zapisywać do tego akordów?
  Posłuchać samemu.
%}

\version "2.17.3"
#(set-global-staff-size 19)

\paper {
  system-system-spacing #'basic-distance = 16
  top-markup-spacing #'basic-distance = 6
}

\header	{
  title = \markup \column { "Witaj Pokarmie" " " }
  poet = "słowa: XVII wiek"
  composer = "muzyka: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \key e \minor
  \time 4/4
  \tempo 4=50
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  \commonprops
  e,4 fis8 g8 fis4. g8 |
  e8 fis8 g8 a8 g4 fis4 |
  e4 fis8 g8 fis4. g8 |
  e8 fis8 g8 a8 g4 fis4 |
  % 5
  g4 a8 b8 a4a8 b8 |
  c4 b8 a8 g4 fis4 |
  g4 a8 g8 fis4.( g16[ fis16]) |
  e1 \bar "|."
}
altomelody = \relative f' {
  \commonprops
  e4 e8 e8 e4 d |
  e8 e8 e8 e8 d4 d4 |
  e4 e8 e8 e4 d4 |
  e8 e8 e8 e8 d4 d4 |
  % 5
  d4 d8 d8 g4 fis8 fis8 |
  e4 e8 e8 d4 d4 |
  d4 d8 d8 e4( d4) |
  e1 \bar "|."
}
tenormelody = \relative c' {
  \commonprops
  b4 b8 b b4 d |
  c8 c8 c8 c8 a4 a4 |
  b4 b8 b8 b4 d4 |
  c8 c8 c8 c8 a4 a4 |
  % 5
  b4 b8 b8 a4 a8 a8 |
  a4 a8 a8 a4 a4 |
  b4 b8 b8 b2 |
  b1 \bar "|."
}
bassmelody = \relative f {
  \commonprops
  e4 e8 e8 b4 b4 |
  c8 c8 c8 c8 d4 d4 |
  e4 e8 e8 b4 b4 |
  c8 c8 c8 c8 d4 d4 |
  % 5
  g,4 g8 g8 d'4 d8 d8 |
  a4 b8 c8 d4 d4 |
  g,4 g8 a8 b2 |
  e1 \bar "|."
}
akordy = \chordmode {
  e2:m b:m c d
  e2:m b:m c d
  g2 d a:m d
  g2 b:m e1:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Wi -- taj Po -- kar -- mie, | w_któ -- rym nie -- zmie -- rzo -- ny |
  nie -- ba i zie -- mie | Twór -- ca jest zam -- knio -- ny, |
  wi -- taj na -- po -- ju zu -- | peł -- nie ga -- szą -- cy |
  u -- mysł pra -- gną -- | cy.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Witaj krynico wszystkiego dobrego"
            "Gdy bowiem w sobie masz Boga samego"
            "Znasz ludziom wszystkie jego wszechmocności"
            "Niesiesz godności."
          }
        }
        \vspace #0.75
        \line {
          "3. "
          \column {
            "Witaj z niebiosów manno padająca"
            "Rozkoszny w sercu naszym smak czyniąca:"
            "Wszystko na świecie co jedno smakuje"
            "W tym się najduje."
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "5. "
          \column	{
            "Witaj rozkoszne z ogrodu rajskiego"
            "Drzewo owocu pełne żywiącego:"
            "Kto Cię skosztuje śmierci się nie boi"
            "Choć nad nim stoi."
          }
        }
        \vspace #0.75
        \line {
          "5. "
          \column {
            "Witaj Jedyna serc ludzkich radości"
            "Witaj strapionych wszelka łaskawości"
            "Ciebie dziś moje łzy słodkie szukają"
            "K Tobie wołają."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    %	\new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \text
  >>
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\markup \vspace #1
\stanzas
