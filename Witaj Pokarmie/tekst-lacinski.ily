\version "2.17.3"

\header	{
  title = "Salve, o esca"
  subtitle = "Witaj, pokarmie"
  % śpiewnik Jagodyński, strona 106
  % (http://www.dbc.wroc.pl/dlibra/publication?id=10057&tab=3)
  poet = "słowa: śpiewnik Jagodyńskiego, XVII wiek"
  composer = "muzyka: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1."
  Sal -- ve, o es -- ca,
  in qua est im -- men -- sus
  Sal -- ve, o po -- _ tus,
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
  "Salve o manna cælitus descendens,"
  "Omnem saporem in te comprehendens:"
  "Est in te omnis gustus suavitatis,"
  "Et voluptatis."
}
zwrotkaIV = \markup \column {
  "Salve, o dulce paradisi lignum,"
  "Tu verus vitæ fructus es et signum:"
  "Quisquis te gustat mortem non timebit,"
  "Quamvis videbit."
}
zwrotkaV = \markup \column {
  "Salve o unicum cordis levamen,"
  "Et afflictorum dulce consolamen,"
  "Te cum lachrymis pijs quæritamus,"
  "Te invocamus."
}
