\version "2.17.3"

\bookOutputName "zbliżam-się-w-pokorze"

\header	{
  title = "Zbliżam się w pokorze"
  poet = "słowa: św. Tomasz z Akwinu"
  composer = "melodia gregoriańska"
  arranger = "opracowanie: Paweł Bębenek"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
metrumitp = {
  \autoBeamOff
  \tempo 4=90
  \key d \major
  \time 4/4
}
melodiaSopranu = \relative f' {
  \metrumitp
  d4 fis a a | a( b) a2 |
  g4 fis e d | d1 |
  d4 fis a a | a( b) a2 |
  g4 fis e d | d1 |
  % 9: Tobie dziś...
  a'4 a b( cis) | \time 5/4 d d( cis) a2 |
  \time 4/4 b4 a g fis | e1 |
  fis4 a g fis | e( d) e2 |
  fis4 d e d | d1
  \bar "|."
}
melodiaAltu = \relative f' {
  \metrumitp
  d4 d8[ e] fis4 fis | e2 e2 |
  d4 d b b | d1 |
  d4 d8[ e] fis4 fis | e2 e2 |
  d4 d b b | d1 |
  % 9: Tobie dziś...
  fis4 fis fis( e) | \time 5/4 fis4 fis2 fis |
  \time 4/4 d4 d d d | cis1 |
  d4 fis d d | cis( b) cis2 |
  d4 b cis b | d1
  \bar "|."
}
melodiaTenorow = \relative f {
  \metrumitp
  a4 a a a | a2 a |
  b4 b g g | a1 |
  a4 a a a | a2 a |
  b4 b g g | a1 |
  % 9: Tobie dziś...
  a4 a b( a) | \time 5/4 b b( a) a2 |
  \time 4/4 g4 g b b | a1 |
  a4 a b b | a2 a |
  b4 b a g | a1
  \bar "|."
}
melodiaBasow = \relative f {
  \metrumitp
  d4 d d d | cis2 cis |
  b4 b g a | d1 |
  d4 d d d | cis2 cis |
  b4 b g a | d1 |
  % 9: Tobie dziś...
  d4 d d( a) | \time 5/4 b b( cis) d2 |
  \time 4/4 g,4 a b b | cis1 |
  d4 d d d | cis2 cis |
  b4 b cis d | d1
  \bar "|."
}
akordy = \chordmode {
  d1 a b2:m g d1
  d1 a b2:m g d1
  d1 b2.:m d2 g1 a
  d2 g a1 b2:m a4 g d1
}
inneAkordy = \chordmode {
  d1 a g4 b:m e:m g:/a d1
  d1 a g4 b:m e:m g:/a d1
  d2 b4:m a b2:m fis4:m d2 g4 d:sus4 g b:m a1
  d2 g4 b:m a1 b2:m a4 g d1
}
%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "1. "
  Zbli -- żam się w_po -- ko -- rze i ni -- sko -- ści swej,
  wiel -- bię Twój ma -- je -- stat, skry -- ty w_Ho -- stii tej.
  To -- bie dziś w_o -- fie -- rze se -- rce da -- ję swe,
  o u -- twier -- dzaj w_wie -- rze, Je -- zu, dzie -- ci Twe.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  "Mylą się, o Boże, w Tobie wzrok i smak;"
  "Kto się im poddaje, temu wiary brak;"
  "Ja jedynie wierzyć Twej nauce chcę,"
  "Że w postaci Chleba utaiłeś się."
}
zwrotkaIII = \markup \column {
  "Bóstwo Swe na Krzyżu skryłeś wobec nas;"
  "Tu ukryte z Bóstwem Człowieczeństwo wraz;"
  "Lecz w Oboje wierząc, wiem, że dojdę tam,"
  "Gdzieś przygarnął łotra: do Twych niebios bram."
}
zwrotkaIV = \markup \column {
  "Jak niewierny Tomasz Twych nie szukam ran,"
  "Lecz wyznaję z wiarą, żeś mój Bóg i Pan,"
  "Pomóż wierze mojej, Jezu, łaską Swą,"
  "Ożyw mą nadzieję, rozpal miłość mą."
}
zwrotkaV = \markup \column {
  "Ty, coś upamiętnił śmierci Bożej czas,"
  "Chlebie Żywy, życiem swym darzący nas,"
  "Spraw, bym dla swej duszy życie z Ciebie brał,"
  "Bym nad wszelką słodycz Ciebie poznać chciał."
}
zwrotkaVI = \markup \column {
  "Ty, co jak pelikan Krwią swą karmisz lud,"
  "Przywróć mi niewinność, oddal grzechów brud;"
  "Oczyść mnie Krwią swoją, która wszystkich nas"
  "Jedną kroplą może obmyć z win i zmaz."
}
zwrotkaVII = \markup \column {
  "Pod zasłoną teraz, Jezu, widzę Cię;"
  "Niech pragnienie serca kiedyś spełni się,"
  "Bym Oblicze Twoje tam oglądać mógł,"
  "Gdzie wybranym miejsce przygotował Bóg."
}