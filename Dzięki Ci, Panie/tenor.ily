\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f {
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
  \set Staff.instrumentName = "T "
  \set Staff.shortInstrumentName = "T "
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
    { g2. g4 a1  }
  }
  \bar "|."
  \break
  \cadenzaOn
  d\breve c bes4 a \bar "|"
  d\breve a4 a a c \bar "|"
  a\breve bes d4 d d \bar "|"
  d\breve d d4 cis4 \bar "||"

}
\addlyrics {
  Dzię -- ki, Ci, Pa -- nie,
  za Cia -- ło Twe i Krew,
  za da -- ry nie -- skoń -- czo -- ne
  wiel -- bi -- my Cię!
  bi -- my Cię!
  \set stanza = "1."
  \tweak #'X-offset #-2
  "Chwalimy Cię, Wszechmocny, za"
  \tweak #'X-offset #-1
  "dary Twe nieskoń" -- czo -- ne,
  \tweak #'X-offset #-0.5
  "Za Ciało" i Two -- ją Krew.
  \tweak #'X-offset #-2
  "Przebacz w swojej dobroci tym, co"
  \tweak #'X-offset #-0.5
  Ciebie nie -- god -- ni,
  \tweak #'X-offset #-1
  "Kiedy do Twego"
  \tweak #'X-offset #-1
  "stołu się zbli" -- ża -- ją.
}