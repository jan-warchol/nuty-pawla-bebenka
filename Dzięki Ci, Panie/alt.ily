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
  \set Staff.instrumentName = "A "
  \set Staff.shortInstrumentName = "A "
  \dynamicUp
  \tupletUp
  \clef treble
  % podaj tonację, na przykład \key g \minor
  \key d \minor
  % podaj metrum, na przykład \time 4/4
  \time 4/4
  % wpisz nuty:
  \repeat volta 2 {
    f8( e d e) f4 d8( f)
    e2 e4 e
    f4 f f f
    f2. g4
    f8( e) f4 f f
    d2 d4 d
  }
  \alternative {
    { d2. d4 d2( cis) }
    { d2. d4 d2( cis) }
  }
  \bar "|."
  \break
  \cadenzaOn
  f\breve e c4 c \bar "|"
  f\breve f4 e d e \bar "|"
  c\breve d f4 f f \bar "|"
  g\breve f e4 e4 \bar "||"

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