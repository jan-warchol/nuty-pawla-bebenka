\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Jezu, ufam Tobie"
  composer = "muzyka: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \tempo 4=110
  \set Score.tempoHideNote = ##t
  \key d \minor
  \time 4/4
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  c2( bes8[ a g f]) |
  g2. g8 a |
  bes2( a8[ g f a]) |
  g1 \bar "|."
}
altomelody = \relative f' {
  e2( d) |
  e d4 d |
  g2( f) |
  d1	\bar "|."
}
tenormelody = \relative c' {
  g4.( a8 bes2) |
  c2 bes4 bes |
  bes2( a4 c) |
  c2( b) \bar "|."
}
bassmelody = \relative f {
  c2( g') |
  c, g'4 g  |
  es2( f) |
  g1 \bar "|."
}
akordy = \chordmode {
  c2 g:m c g:m es f g
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Je -- zu, u -- fam To -- bie.
}
stanzas = \markup {
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
    \new Lyrics = womenlyrics \lyricsto soprano \text

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
    \new Lyrics = menlyrics \lyricsto tenor \text

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