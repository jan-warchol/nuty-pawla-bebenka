\version "2.17.3"

\bookOutputName "dzieki-ci-panie"

\header	{
  title = "Dzięki Ci, Panie"
  composer = "muzyka: Paweł Bębenek"
  poet = "słowa: Radpert z St. Gallen"
  editor = "skład nut: Jan Warchoł"
  copyright = "© Paweł Bębenek"
}
%--------------------------------MELODIA
melodiaSopranu = \relative f' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    d'2 a4 d
    d( c8 b) c4 c
    c bes a bes
    a2. g8( bes)
    \break
    a4 a a8( f) g( a)
    g2 d4 e
  }
  \alternative {
    { f2. g8( f) e1 }
    { f2. e4 d1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  a'\breve g f4 f4 \bar "|"
  bes\breve a4 g f g \bar "|"
  f\breve f bes4 a a \bar "|"
  g\breve g a4 a4 \bar "||"
}
melodiaAltu = \relative f' {
  \key d \minor
  \time 4/4
  \repeat volta 2 {
    \shape #'((0 . 0.2)(0 . 0.5)(0 . 0.5)(0 . 0.2)) Slur
    f8( e d e) f4 d8( f)
    e2 e4 e
    f4 f f f
    f2. g4
    f8( e) f4 f f
    d2 d4 d
  }
  \alternative {
    { d2. d4 d2( cis) }
    { d2. d4 d1 }
  }
  \bar "|."
  \break
  \cadenzaOn
  f\breve e c4 c \bar "|"
  f\breve f4 e d e \bar "|"
  c\breve d f4 f f \bar "|"
  g\breve f e4 e4 \bar "||"
}
melodiaTenorow = \relative f {
  \key d \minor
  \time 4/4
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
    { g2. a4 a1  }
  }
  \bar "|."
  \break
  \cadenzaOn
  d\breve c bes4 a \bar "|"
  d\breve a4 a a c \bar "|"
  a\breve bes d4 d d \bar "|"
  d\breve d d4 cis4 \bar "||"
}
melodiaBasow = \relative f {
  \key d \minor
  \time 4/4
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
akordy = \chordmode {
}

%--------------------------------SŁOWA
tekst = \lyricmode {
  \set stanza = "Ref: "
  Dzię -- ki Ci, Pa -- nie,
  za Cia -- ło Twe i Krew,
  za da -- ry nie -- skoń -- czo -- ne
  wiel -- bi -- my Cię!
  bi -- my Cię!
  \once \override LyricSpace.minimum-distance = #1.5
  \set stanza = "1."
  \tweak X-offset #-2
  "Chwalimy Cię, Wszechmocny, za"
  \tweak X-offset #-0.6
  \markup { \concat { \bold \underline da ry } Twe nieskoń } --
  \markup \bold \underline czo -- ne,
  \tweak X-offset #-0.4
  "za Ciało"
  \markup \bold \underline i Two -- ją Krew.
  \once \override LyricSpace.minimum-distance = #1.5
  \tweak X-offset #-2
  "Przebacz w swojej dobroci"
  \tweak X-offset #-1.4
  \markup { \bold \underline tym, co Ciebie }
  \markup \bold \underline nie -- god -- ni,
  \once \override LyricSpace.minimum-distance = #1.5
  \tweak X-offset #-1
  "kiedy do Twego"
  \tweak X-offset #-0.9
  \markup { \concat { \bold \underline sto łu } się zbli } --
  \markup \bold \underline ża --
  \footnote #'(1 . 0.5) \markup {
    tekst potwierdzony przez Pawła Bębenka w kwietniu 2013.
  }
  my.
}

tekstSopranu = \tekst
tekstAltu = \tekst
tekstTenorow = \tekst
tekstBasow = \tekst

zwrotkaII = \markup \column {
  \line {
    Przebacz – żeś
    \concat { \underline\bold hoj ny } i
    \concat { \underline\bold wier ny } –
  }
  \line {
    \concat { Uwol \underline\bold nij }
    z więzów grzechu,
  }
  \line {
    Byśmy \underline\bold się
    \concat { od \underline\bold mie nili }
  }
  \line {
    Przez
    \concat { taje \underline\bold mni ce }
    \concat { naj \underline\bold święt sze. }
  }
}
zwrotkaIII = \markup \column {
  \line {
    Niechaj przestworem spłynie z gwiazd
    \concat { \underline\bold a nioł } Twój
    \concat { \underline\bold mi ły, }
  }
  \line {
    Oczyści i uleczy nasze
    \concat { \underline\bold ser ca } i ciała,
  }
  \line {
    Powiedzie, za sprawą
    \concat { tajem \underline\bold ni cy, } na same
    \concat { szczy \underline\bold ty } nieba,
  }
  \line {
    A tu na ziemi ratuje
    \concat { o \underline\bold bro ną } Twoją
    \concat { po \underline\bold tęż ną. }
  }
}
zwrotkaIV = \markup \column	{
  \line {
    Spojrzyj łaskawie, Stwórco, na nas
    \concat { zni \underline\bold ko mych } i
    \concat { \underline\bold sła bych, }
  }
  \line {
    Ocal, Dobry Pasterzu, owce
    \underline\bold na Swojej łące.
  }
  \line {
    Tyś życie nam przywrócił
    \underline\bold wbrew
    \concat { nieprzyja \underline\bold cie lowi }
  }
  \line {
    I wzmacniasz już na zawsze,
    \concat { \underline\bold sie bie } dając nam,
    \concat { \underline\bold Pa nie. }
  }
}
zwrotkaV = \markup \column {
  \line {
    Spraw to, Ojcze Wszechmocny, w
    \concat { do \underline\bold bro ci } swej
    \concat { nie \underline\bold zmier nej, }
  }
  \line { Byśmy \underline\bold się stali jedno }
  \line {
    Z Tobą,
    \concat { Chry \underline\bold stu sem }
    \underline\bold i Duchem.
  }
  \line {
    Ty, coś w
    \concat { \underline\bold Trój cy }
    \concat { je \underline\bold dy ny. }
  }
}
