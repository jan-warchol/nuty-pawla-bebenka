\version "2.17.3"

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1."
  Wi -- taj Po -- kar --
  \tweak #'X-offset #-1.2 mie, |
  \tweak #'X-offset #-3 w_któ -- rym nie -- zmie --
  \tweak #'X-offset #-0.7 LyricText
  rzo -- ny |
  wi -- taj na -- po -- ju zu -- |
  peł -- nie ga -- szą -- cy |
  u -- mysł pra -- gną -- | cy.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

drugiWers = \lyricmode {
  nie -- ba i zie -- mie |
  Twór -- ca jest zam -- knio --
  \tweak #'X-offset #-0.5 ny, |
}

drugiWersSopranu = \drugiWers
drugiWersAltu = \drugiWers
drugiWersTenorow = \drugiWers
drugiWersBasow = \drugiWers

zwrotkaII = \markup \column {
  "Witaj krynico wszystkiego dobrego"
  "Gdy bowiem w sobie masz Boga samego"
  "Znasz ludziom wszystkie jego wszechmocności"
  "Niesiesz godności."
}
zwrotkaIII = \markup \column {
  "Witaj z niebiosów manno padająca"
  "Rozkoszny w sercu naszym smak czyniąca:"
  "Wszystko na świecie co jedno smakuje"
  "W tym się najduje."
}
zwrotkaIV = \markup \column {
  "Witaj rozkoszne z ogrodu rajskiego"
  "Drzewo owocu pełne żywiącego:"
  "Kto Cię skosztuje śmierci się nie boi"
  "Choć nad nim stoi."
}
zwrotkaV = \markup \column {
  "Witaj Jedyna serc ludzkich radości"
  "Witaj strapionych wszelka łaskawości"
  "Ciebie dziś moje łzy słodkie szukają"
  "K'Tobie wołają."
}
