\version "2.16.1"
#(set-global-staff-size 18)

\paper {
  indent = 0 \mm
  left-margin = 13 \mm
  right-margin = 12 \mm
  top-markup-spacing #'basic-distance = 3
  \include "epifanijny-styl-nagłówków.ily"
}

\header {
  title = "Dzięki Ci, Panie"
  composer = "muzyka: Paweł Bębenek"
  poet = "słowa: Radpert z St. Gallen"
}

sopranomelody = \relative f' {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \dynamicUp
  \tupletUp
  \clef treble
  % podaj tonację, na przykład \key g \minor
  \key d \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \repeat volta 2 {
    d'2 a4 d
    d( c8 b) c4 c
    c bes a bes
    a2. g8( bes)
    a4 a a8( f) g( a)
    g2 d4 e
  }
  \alternative {
    { f2. g8( f) e1 }
    { f2. e4 d1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  a'\breve g f4 f4 \bar "|"
  bes\breve a4 g f g \bar "|"
  f\breve f bes4 a a \bar "|"
  g\breve g a4 a4 \bar "||"
}

altomelody = \relative f' {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \dynamicUp
  \tupletUp
  \clef treble
  % podaj tonację, na przykład \key g \minor
  \key d \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \repeat volta 2 {
    \shape Slur #'((0 . 0.2)(0 . 0.5)(0 . 0.5)(0 . 0.2))
    f8( e d e) f4 d8( f)
    e2 e4 e
    f4 f f f
    f2. g4
    f8( e) f4 f f
    d2 d4 d
  }
  \alternative {
    { d2. d4 d2( cis) }
    { d2. d4 d1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  f\breve e c4 c \bar "|"
  f\breve f4 e d e \bar "|"
  c\breve d f4 f f \bar "|"
  g\breve f e4 e4 \bar "||"
}

tenormelody = \relative f {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \dynamicUp
  \tupletUp
  \clef "treble_8"
  % podaj tonację, na przykład \key g \minor
  \key d \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \repeat volta 2 {
    a2 a4 a
    a2 a4 bes8( c)
    d( c) d4 d d
    c2. c4
    d4 d d d
    d4.( c8) b4 a
  }
  \alternative {
    { g2. g4 a1 }
    { g2. a4 a1  }
  }
  \bar "|."
  \break
  \cadenzaOn
  d\breve c bes4 a \bar "|"
  d\breve a4 a a c \bar "|"
  a\breve bes d4 d d \bar "|"
  d\breve d d4 cis4 \bar "||"
}

bassmelody = \relative f {
  \tag #'solo {
    \set Staff.midiInstrument = "clarinet"
    \set Staff.midiMinimumVolume = #0.6
    \set Staff.midiMaximumVolume = #0.8
  }
  \tag #'chor {
    \set Staff.midiInstrument = "acoustic grand"
    \set Staff.midiMinimumVolume = #0.4
    \set Staff.midiMaximumVolume = #0.6
  }
  \dynamicUp
  \tupletUp
  \clef bass
  % podaj tonację, na przykład \key g \minor
  \key d \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \repeat volta 2 {
    d2 d4 d
    a2 a4 a
    bes4 bes bes bes
    f'2. e4
    d4 d d d
    b2 b4 b
  }
  \alternative {
    { bes2. bes4  a1 }
    { bes2. a4 d1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  d\breve e f4 f \bar "|"
  bes,\breve d4 d d c \bar "|"
  f\breve bes, bes4 d d \bar "|"
  b\breve bes a4 a \bar "||"
}


text = \lyricmode {
  \set stanza = "Ref: "
  Dzię -- ki Ci, Pa -- nie,
  za Cia -- ło Twe i Krew,
  za da -- ry nie -- skoń -- czo -- ne
  wiel -- bi -- my Cię!
  bi -- my Cię!
  \once \override LyricSpace #'minimum-distance = #1.5
  \set stanza = "1."
  \tweak #'X-offset #-2
  "Chwalimy Cię, Wszechmocny, za"
  \tweak #'X-offset #-0.6
  \markup { \concat { \bold \underline da ry } Twe nieskoń } --
  \markup \bold \underline czo -- ne,
  \tweak #'X-offset #-0.4
  "za Ciało"
  \markup \bold \underline i Two -- ją Krew.
  \once \override LyricSpace #'minimum-distance = #1.5
  \tweak #'X-offset #-2
  "Przebacz w swojej dobroci"
  \tweak #'X-offset #-1.4
  \markup { \bold \underline tym, co Ciebie }
  \markup \bold \underline nie -- god -- ni,
  \once \override LyricSpace #'minimum-distance = #1.5
  \tweak #'X-offset #-1
  "kiedy do Twego"
  \tweak #'X-offset #-0.9
  \markup { \concat { \bold \underline sto łu } się zbli } --
  \markup \bold \underline ża -- ją.
}

\score {
  \transpose f es
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
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.5
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
    \override NoteHead #'style = #'altdefault
  }
}
