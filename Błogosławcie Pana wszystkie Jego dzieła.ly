\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Błogosławcie Pana wszystkie Jego dzieła"
  poet = "słowa: Paula Siewak OCPA"
  composer = "muzyka: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \tempo 4=60
  \set Score.tempoHideNote = ##t
  \key d \minor
  \time 4/4
  \partial 4
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  d,8 e | f4. f8 f f g f | e4 d8[ c] d d
  d8 e | f4 f f8 f g a | g4 g a8 a
  g8 a | bes4. a8 g4( f8[ e]) | f1
  \bar "|."
}
altomelody = \relative f' {
  d8 d | d4 d d8 d d d | c4 d c8 bes   % w niektórych źródłach zamiast ćwierćnuty d jest c
  bes8 bes | d4 d d8 d d16[ e] f8 | e4 d8[ e] f f
  f8 f | f4. f8 e2 | e2( d)
  \bar "|."
}
tenormelody = \relative c' {
  a8 a | a[ g] a[ f] bes bes bes a | g4 g g8 g
  g16[ f] g[ bes] | a4 a bes8 bes d d | c4 c c8 c
  c c | c4. d8 c2 | bes4 a8[ g] a2  % w niektórych źródłach zamiast c4. jest d4.
  \bar "|."
}
bassmelody = \relative f {
  d8 d | d4 c bes8 bes bes bes | c4 c g8 g
  g8 g | d'4 c bes8 bes bes bes | c4 c f8 f
  f8 f | g,4. g8 c2 | d1
  \bar "|."
}
akordy = \chordmode {
  d4:m d2:m bes c
  g:m d4:m d:m7 bes2 c
  f g:m7 c bes d:m
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Bło -- go -- sław -- cie Pa -- na wszy -- stkie Je -- go dzie -- ła,
  któ -- re by nie kwi -- tły gdy -- by nie cier -- pie -- nie,
  bło -- go -- sław -- cie Pa -- na.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Błogosławcie Pana wszystkie łzy i żale,"
            "Każda moja słabość i upokorzenie,"
            "Błogosławcie Pana."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Błogosławcie Pana wszystkie moje rany,"
            "No które Duch Święty staje się balsamem,"
            "Błogosławcie Pana."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Niech Cię błogosławią wszystkie me niemoce,"
            "Ból skrzętnie skrywany po bezsennej nocy,"
            "Niech Cię błogosławią."
          }
        }
        \hspace #0.1
        \line {
          "5. "
          \column {
            "Błogosławcie Pana, że mu ufam jeszcze,"
            "Że mnie wciąż uzdrawia łaski Swojej deszczem,"
            "Błogosławcie Pana."
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
    \new Lyrics \lyricsto soprano \text

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
    \new Lyrics \lyricsto alto \text

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
    \new Lyrics \lyricsto tenor \text

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
    \new Lyrics \lyricsto bass \text
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
