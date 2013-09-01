\version "2.17.3"

\header	{
  title = "Witaj, pokarmie"
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
  Wi -- taj, po -- kar --
  \tweak #'X-offset #-1.2 mie, |
  \tweak #'X-offset #-3 w_któ -- rym nie -- zmie --
  \tweak #'X-offset #-0.7 LyricText
  rzo -- ny |
  wi -- taj, na -- po -- ju zu -- |
  \markup \underline peł -- _ nie ga -- szą -- cy |
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
  "Witaj, krynico wszystkiego dobrego,"
  "Gdy bowiem w sobie masz Boga samego"
  \line {
    "Znasz ludziom wszystkie"
    \concat {\underline je go }
    wszechmocności,
  }
  "Niesiesz godności."
}
zwrotkaIII = \markup \column {
  "Witaj, z niebiosów manno padająca,"
  "Rozkoszny w sercu naszym smak czyniąca:"
  \line {
    "Wszystko na świecie co"
    \concat { \underline jed no }
    smakuje
  }
  "W tym się najduje."
}
zwrotkaIV = \markup \column {
  "Witaj, rozkoszne z ogrodu rajskiego"
  "Drzewo owocu pełne żywiącego:"
  \line {
    "Kto Cię skosztuje,"
    \concat { \underline śmier ci }
    "się nie boi,"
  }
  "Choć nad nim stoi."
}
zwrotkaV = \markup \column {
  "Witaj, jedyna serc ludzkich radości,"
  "Witaj, strapionych wszelka łaskawości,"
  \line {
    "Ciebie dziś moje łzy"
    \concat { \underline słod kie }
    szukają,
  }
  "K'Tobie wołają."
}
