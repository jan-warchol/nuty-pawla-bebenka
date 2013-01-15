\version "2.13.37"
\pointAndClickOff
\header	{
  title = "Skosztujcie i zobaczcie"
  subtitle = "Psalm 34"
  composer = "muzyka: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \key f \major
  \time 2/4
  \partial 8
  \override Staff.NoteHead #'style = #'altdefault
}
scoretempomarker = {
  \tempo 4=60
  \set Score.tempoHideNote = ##t
}
#(set-global-staff-size 17)
\paper {
  system-count = 3
  ragged-last-bottom = ##f
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  e,8 | f4. f8 | g8 g a4 | a8
  f8 bes4 | a8 f g4 ~ | g8 \fermata
  a8 bes4 ~ | bes8 bes a f | g4 g8
  g8 | g4 d8 f | f4. r8 \break
  \repeat volta 2 {
    \override ParenthesesItem #'font-size = 3
    \override ParenthesesItem #'padding = #0.75
    \cadenzaOn f\breve g8 \parenthesize g g a a \cadenzaOff \bar "|"
    \cadenzaOn bes\breve a8 f g g \cadenzaOff |
  }
}
altomelody = \relative f' {
  c8 | d4. d8 | f e f4 | f8
  f8 d4 | d8 d f4 ( | e8 \fermata )
  f8 d4~ | d8 d f d | f4 e8
  e8 | d4 bes8 d | c4. r8
  \repeat volta 2 {
    \override ParenthesesItem #'font-size = 3
    \override ParenthesesItem #'padding = #0.75
    \cadenzaOn d\breve f8 \parenthesize f e f f \cadenzaOff \bar "|"
    \cadenzaOn d\breve f8 c e e \cadenzaOff
  }
}
tenormelody = \relative c' {
  a8 | a4. a8 | c8 c c4 | c8
  c8 g4 | a8 a c4 ~ | c8 \fermata
  c8 g4 ~ | g8 g a a | c4 c8
  c8 | bes4 f8 bes | a4. r8
  \repeat volta 2 {
    \override ParenthesesItem #'font-size = 3
    \override ParenthesesItem #'padding = #0.75
    \cadenzaOn a\breve c8 \parenthesize c c c c \cadenzaOff \bar "|"
    \cadenzaOn g\breve a8 a c c \cadenzaOff |
  }
}
bassmelody = \relative f {
  a,8 | d4. d8 | c8 c f4 | f8
  a,8 g4 | d'8 d c4 ~ |c8 \fermata
  f,8 g4 ~ | g8 g d' d | c4 c8
  a8 | g4 bes8 bes | f4. r8
  \repeat volta 2 {
    \override ParenthesesItem #'font-size = 3
    \override ParenthesesItem #'padding = #0.75
    \cadenzaOn d'\breve c8 \parenthesize c c f f \cadenzaOff \bar "|"
    \cadenzaOn g,\breve d'8 f c c \cadenzaOff |
  }
}
akordy = \chordmode {

}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Skosz -- tuj -- cie i zo -- bacz -- cie
  jak do -- bry jest Pan,
  skosz -- tuj -- cie i zo -- bacz -- cie
  jak do -- bry jest Pan.
  \set stanza = "1. "
  \once \override LyricText #'self-alignment-X = #LEFT "Będę błogosławił Pana po" \markup { \bold \underline wie } -- \skip16 czne cza -- sy,
  \once \override LyricText #'self-alignment-X = #LEFT "Jego chwała będzie zawsze na" \markup { \bold \underline mo } -- ich u -- stach.
}
secondline =  \lyricmode {
  \repeat unfold 24 \skip16
  \once \override LyricText #'self-alignment-X = #LEFT "Dusza moja" \markup { \bold \underline chlu } -- bi się Pa -- nem,
  \once \override LyricText #'self-alignment-X = #LEFT "Niech słyszą to pokorni i niech" \markup { \bold \underline się } we -- se -- lą.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            \line { Uwielbiajcie razem \bold \underline ze mną Pana, }
            \line { Wspólnie wywyższajmy \concat { \bold \underline Je go } Imię. }
            \line { Szukałem pomocy u Pana, a \bold \underline On mnie wysłuchał, }
            \line { I uwolnił od \concat { \bold \underline wszel kiej } trwogi. }
          }
        }
        \vspace #0.4
        \line {
          "3. "
          \column {
            \line { Spójrzcie na Niego a \concat { rozpromie \bold \underline ni cie } się radością, }
            \line { Oblicza wasze nie \concat { za \bold \underline pło ną } wstydem. }
            \line { Oto biedak zawołał i \bold \underline Pan go usłyszał, }
            \line { I wybawił ze \concat { wszy \bold \underline stkich } ucisków. }
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "4. "
          \column	{
            \line { Anioł Pana otacza szańcem \concat { \bold \underline bo gobojnych}, }
            \line { Aby ocalić tych, którzy \concat { \bold \underline "w Nie" go } wierzą. }
            \line { Skosztujcie i zobaczcie jak \bold \underline Pan jest dobry, }
            \line { Szczęśliwy człowiek, który się do \concat { Nie \bold \underline go } ucieka. }
          }
        }
        \vspace #0.4
        \line {
          "5. "
          \column {
            \line { Bójcie się Pana wszyscy \concat { \bold \underline Je go } święci, }
            \line { Gdyż bogobojni nie \concat { za \bold \underline zna ją } biedy. }
            \line { Bogacze zubożeli i \concat { za \bold \underline zna li } głodu, }
            \line { Szukającym Pana niczego \bold \underline nie zabraknie. }
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \scoretempomarker
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = sopranolyrics \lyricsto soprano \text
    \new Lyrics = sopranosecond \lyricsto soprano \secondline

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }
    \new Lyrics = altolyrics \lyricsto alto \text
    \new Lyrics = altosecond \lyricsto alto \secondline

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = tenorlyrics \lyricsto tenor \text
    \new Lyrics = tenorsecond \lyricsto tenor \secondline

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
    \new Lyrics = basslyrics \lyricsto bass \text
    \new Lyrics = basssecond \lyricsto bass \secondline
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \fourstaveschoir
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \fourstaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
