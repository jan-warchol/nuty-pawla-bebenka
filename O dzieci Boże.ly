\version "2.17.3"
#(set-global-staff-size 17)

\header	{
  title = "O dzieci Boże, dosyć łez"
  poet = "słowa: Jan Tisserant"
  composer = "opracowanie: Paweł Bębenek"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative c'' {
  \key e \minor
  \time 6/4
}
altomelody = \relative f' {
  \key e \minor
  \time 6/4
}
tenormelody = \relative c' {
  \key e \minor
  \time 6/4
}
bassmelody = \relative f {
  \key e \minor
  \time 6/4
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
}

stanzas = \markup {
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
    }
    \lyricsto soprano \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    indent = 0\cm
  }
}

\stanzas