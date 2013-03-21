\version "2.16.1"

\new Staff \with { \consists "Ambitus_engraver" } \relative f' {
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
  \set Staff.instrumentName = "S "
  \set Staff.shortInstrumentName = "S "
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
    { f2. g8( f) e1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  a\breve g f4 f4 \bar "|"
  bes\breve a4 g f g \bar "|"
  f\breve f bes4 a a \bar "|"
  g\breve g a4 a4 \bar "||"

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