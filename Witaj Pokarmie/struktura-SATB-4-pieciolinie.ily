\version "2.17.18"

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
      \override StaffSymbol #'thickness = #0.9
      \override BarLine #'hair-thickness = #2
      \override Stem #'thickness = #1.2
      \override Slur #'thickness = #1.6
      \override Tie #'line-thickness = #1
      \override ClefModifier #'font-shape = #'roman
      \override ClefModifier #'font-size = #-3.3
      \override ClefModifier #'X-offset = #0.7
    }
    \context {
      \Lyrics
      \override LyricText #'font-size = #0.8
      \override LyricHyphen #'extra-offset = #'(0 . 0.1)
      \override LyricHyphen #'minimum-distance = #0.5
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