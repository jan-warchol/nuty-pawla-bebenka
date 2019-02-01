\version "2.21.0"

SopranoInstrumentName = "S"
AltoInstrumentName = "A"
TenorInstrumentName = "T"
BassInstrumentName = "B"

SopranoShortInstrumentName = "S"
AltoShortInstrumentName = "A"
TenorShortInstrumentName = "T"
BassShortInstrumentName = "B"

SopranoMidiInstrument = "clarinet"
AltoMidiInstrument = "english horn"
TenorMidiInstrument = "english horn"
BassMidiInstrument = "clarinet"

\layout {
  \context {
    \Voice
    \applyContext #(lambda (x)
        (if (member (ly:context-id x ) (list "SopranoVoice" "TenorVoice"))
          (ly:context-pushpop-property x 'Ambitus 'X-offset 1.7 )))

  }
}

%{
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
        \override Ambitus.X-offset = #1.7

        \voiceOne
        \melodiaSopranu
      }
      \new Voice = alt {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin.stencil = ##f
        \override DynamicText.stencil = ##f
        \override DynamicTextSpanner.stencil = ##f
        \override TextScript.stencil = ##f

        \voiceTwo
        \melodiaAltu
      }
    >>

    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    }
    \lyricsto sopran \tekst
    \new Lyrics \with {
      \override VerticalAxisGroup.staff-affinity = #CENTER
    }
    \lyricsto sopran \drugiWers

    \new Staff = panowie <<
      \clef bass
      \set Staff.instrumentName = \markup \center-column { T B }
      \set Staff.shortInstrumentName = \markup \center-column { T B }
      \new Voice = tenor {
        \set Voice.midiInstrument = "english horn"
        \override Hairpin.stencil = ##f
        \override DynamicText.stencil = ##f
        \override DynamicTextSpanner.stencil = ##f
        \override TextScript.stencil = ##f
        \override Ambitus.X-offset = #1.7

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
  >>
}
%}