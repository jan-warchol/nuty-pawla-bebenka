%{TODO:
  W kilku miejscach jest akord sus4,
  który rozwiązuje się na zwykły z tercją.
  Zapisywać to czy nie robić bałaganu?
  A może w ogóle nie zapisywać do tego akordów?
  Posłuchać samemu.
%}

\version "2.17.3"

\bookOutputName "witaj-pokarmie"

doted = {
  \slurDashed
  \tieDashed
  \set melismaBusyProperties = #'()
}
solid = {
  \slurSolid
  \tieSolid
  \unset melismaBusyProperties
}

%--------------------------------MELODIA
metrumitp = {
  \key e \minor
  \time 4/4
  \tempo 4=50
  \set Timing.beamExceptions = #'()
  \set Timing.beamHalfMeasure = ##f
}
melodiaSopranu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    e4 fis8 g8 fis4. g8 |
    e8 fis8 g8 a8 g4 fis4 |
  }
  % 5
  \doted
  g4 a8 b8 a4( a8) b8 |
  c8~c b8 a8 g4 fis4 |
  \solid
  g4 a8 g8 fis4.( g16[ fis16]) |
  e1
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  \repeat volta 2 {
    e4 e8 e8 e4 d |
    e8 e8 e8 e8 d4 d4 |
  }
  % 5
  \doted
  d4 d8 d8 g4( fis8) fis8 |
  e8~e e8 e8 d4 d4 |
  \solid
  d4 d8 d8 e4( d4) |
  e1
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  \repeat volta 2 {
    b4 b8 b b4 d |
    c8 c8 c8 c8 a4 a4 |
  }
  % 5
  \doted
  b4 b8 b8 a4~ a8 a8 |
  a8~a a8 a8 a4 a4 |
  \solid
  b4 b8 b8 b2 |
  b1
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  \repeat volta 2 {
    e4 e8 e8 b4 b4 |
    c8 c8 c8 c8 d4 d4 |
  }
  % 5
  \doted
  g,4 g8 g8 d'4~ d8 d8 |
  a8~a b8 c8 d4 d4 |
  \solid
  g,4 g8 a8 b2 |
  e1
  \bar "|."
}
akordy = \chordmode {
  \repeat volta 2 {
    e2:m b:m c d
  }
  g2 d a:m d
  g2 b:m e1:m
}
