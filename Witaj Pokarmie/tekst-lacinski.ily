\version "2.17.3"

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1."
  Sal -- ve o es -- ca,
  in qua est im -- men -- sus
  Sal -- ve o po -- _ tus,
  verum si -- ti -- en -- tis
  le -- va -- men men -- tis.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
  cæ -- li et ter -- ræ
  So -- ter com -- pre -- hen -- sus,
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers

zwrotkaII = \markup \column {
  "Salve fons vere, plene bonis veris,"
  "Nam quando in te Deum ipsum geris:"
  "Divine in te geris bonitatis,"
  "Præmia gratis."
}
zwrotkaIII = \markup \column {
  "Salve o Manna cælitus descendens,"
  "Omnem saporem in te comprehendens:"
  "Est in te omnis gustus suauitatis,"
  "Et voluptatis."
}
zwrotkaIV = \markup \column {
  "Salve o dulce paradisi lignum,"
  "Tu verus vitæ fructus es et signum:"
  "Quisquis te gustat mortem non timebit,"
  "Quamuis videbit."
}
zwrotkaV = \markup \column {
  "Salve o unicum cordis levamen,"
  "Et afflictorum dulce consolamen,"
  "Te cum lachrymis pijs quæritamus,"
  "Te invocamus."
}
