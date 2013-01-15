\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Niechaj Cię, Panie"
  subtitle = "Psalm 145"
  poet = "słowa: por. Ps 145 (144), 10-11"
  composer = "muzyka: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \key g \minor
  \time 4/4
}
scoretempomarker = {
  \tempo 4 = 60
  \set Score.tempoHideNote = ##t
}
\paper {
  page-count = #1
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  c4 g8 c bes[( a]) bes g16 a
  bes8 bes c bes a[( g16 f]) g8 g
  g g c bes a g a f
  g2 g4. g8
  % 5
  g4 a8 bes a8[( g]) a c
  bes4 a8 f g4 g
  es8 es g bes a4 g8 f
  g2 g \bar "|."
}
altomelody = \relative f' {
  es4 es8 f g4 g8 g16 g
  g8 g g g f4 d8 d
  es es es es f f f f
  d4.( es8) d4. d8
  % 5  
  es4 es8 es c4 c8 c
  d4 d8 d es4 es
  es8 es es es c4 d8 d
  d2 d \bar "|."
}
tenormelody = \relative c' {
  c4 c8 c d4 d8 d16 d
  es8 es es es c4 c8 b
  c c c c c c c c
  b4.( c8) d4. d8
  % 5 
  bes 4 bes8 bes c4 c8 c
  g4 a8 a bes([ a)] bes4
  bes8 bes bes bes a4 a8 a
  b2 b \bar "|."
}
bassmelody = \relative f{
  c4 c8 c g'4 g8 g16 g
  es8 es es es f4 g8 g
  c, c c c f f f f
  g2 <g g,>4. <g g,>8
  % 5 
  es4 es8 es f4 f8 f
  g4 d8 d es4 es
  es8 es es es f4 d8 d
  g,2 g \bar "|."
}
akordy = \chordmode {
  c2:m g:m es f4 g
  c2:m f g1 es2 f
  g4:m d:m es2 es f4 d:m g1
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  Nie -- chaj Cię, Pa -- nie, wiel -- bią wszy -- stkie Two -- je dzie -- ła, \break
  i świę -- ci Two -- i niech Cię bło -- go -- sła -- wią! Niech
  %-=5=-  
  mó -- wią o chwa -- le Two -- \break je -- go kró -- le -- stwa
  i niech gło -- szą Two -- ją po -- tę -- gę.
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

    \new Staff = bass \with {
      \consists "Ambitus_engraver"
    }        {
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
