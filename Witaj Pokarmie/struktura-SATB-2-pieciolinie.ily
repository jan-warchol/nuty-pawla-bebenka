\version "2.17.3"

\score {
  \new ChoirStaff <<
    % \new ChordNames { \germanChords \akordy }
    \new Staff = panie <<
      \clef treble
      \set Staff.instrumentName = \markup \center-column { S A }
      \set Staff.shortInstrumentName = \markup \center-column { S A }
      \new Voice = sopran {
        \set Voice.midiInstrument = "clarinet"
        \dynamicUp
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \melodiaSopranu
      }
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f

        \voiceTwo
        \melodiaAltu
      }
    >>

    \new Lyrics = tekst \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
    \new Lyrics = drugiwers \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }

    \new Staff = panowie <<
      \clef bass
      \set Staff.instrumentName = \markup \center-column { T B }
      \set Staff.shortInstrumentName = \markup \center-column { T B }
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin #'stencil = ##f
        \override DynamicText #'stencil = ##f
        \override DynamicTextSpanner #'stencil = ##f
        \override TextScript #'stencil = ##f
        \override Ambitus #'X-offset = #1.7

        \voiceOne
        \melodiaTenorow
      }
      \new Voice = bas {
        \set Voice.midiInstrument = "clarinet"
        \dynamicDown

        \voiceTwo
        \melodiaBasow
      }
    >>

    \context Lyrics = tekst \lyricsto tenor \tekst
    \context Lyrics = drugiwers \lyricsto tenor \drugiWers
  >>
}

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup
    #'nonstaff-relatedstaff-spacing #'padding = #1.5
  }
}
