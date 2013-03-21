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
  \set Staff.instrumentName = "B "
  \set Staff.shortInstrumentName = "B "
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
\addlyrics {
  \set stanza = "Ref: "
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