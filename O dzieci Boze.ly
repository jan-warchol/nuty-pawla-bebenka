\version "2.17.3"
#(set-global-staff-size 16.5)

\header	{
  title = \markup \column { "O dzieci Boże, dosyć łez" " " " " " " }
  poet = "słowa: Jan Tisserant"
  composer = "opracowanie: Paweł Bębenek"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
  left-margin = 16 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 15
}
%--------------------------------MELODY--------------------------------
sopranomelody =	\relative f' {
  \key e \minor
  \time 6/4
  \partial 2.
  e4 g a
  b( a) g a( g) fis
  e2. e4 g a
  b( a) g a( g) fis
  e2. e4 e fis
  e( d) e g( fis) e
  b2. fis'4 g fis
  e1.~
  e2. \bar "|."
  % ugly, should be able to set all things at once,
  % and not only for stems&noteheads
  \set fontSize = #-3
  \override Stem #'length = #4.2
  \override Stem #'thickness = #1
  e4 g a
}
altomelody = \relative f' {
  \key e \minor
  \time 6/4
  \partial 2.
  e4 g fis
  g( fis) e fis( e) d
  e2. e4 e fis
  g( fis) e fis( e) d
  c2. c4 c d
  b2 b4 c2 c4
  b2. d4 d d
  d2 cis8\melisma b\melismaEnd cis2 a4
  b2. \bar "|."
  \set fontSize = #-3
  \override Stem #'length = #4.2
  \override Stem #'thickness = #1
  e4 g fis
}
tenormelody = \relative f {
  \key e \minor
  \time 6/4
  \partial 2.
  b4 b b
  b( a) b d2 a4
  b2. b4 b d
  d2 d4 d2 a4
  g2. a4 a a
  g2 g4 g2 g4
  fis2
  <<
    {
      \once \override Beam #'positions = #'(4 . 3.6)
      a8\melisma g\melismaEnd
      \override Stem #'length = #4
      a2 a4
      a1.(
      \revert Stem #'length
      b2.) \bar "|."
      \set fontSize = #-3
      \override Stem #'length = #4.2
      \override Stem #'thickness = #1
      b4 b b
    }
    \new Lyrics \with { alignAboveContext = men fontSize = -2 }
    \lyricsto tenor \lyricmode {
      Al -- le -- lu -- ja!
    }
  >>
}
bassmelody = \relative f {
  \key e \minor
  \time 6/4
  \partial 2.
  e4 e e
  e2 e4 d2 d4
  e2. e4 e4 d
  g,2 g4 b2 d4
  c2. a4 a d
  e2 d4 c2 a4
  b2. d4 d d
  a1.(
  e'2.) \bar "|."
  \set fontSize = #-3
  \override Stem #'length = #4.2
  \override Stem #'thickness = #1
  e4 e e
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1."
  O dzie -- ci \tweak #'X-offset #-0.5 \markup \underline Bo -- że, do -- syć łez,
  bo Chrys -- tus \tweak #'X-offset #-0.5 \markup \underline dziś zmar --
  \tweak #'X-offset #-0.5 twych -- wstan jest,
  Król ży -- cia,
  \tweak #'X-offset #-1 \markup \underline
  wiecz -- nej \tweak #'X-offset #-1 chwa -- ły \tweak #'X-offset #-1.5 Król,
  Al -- le -- lu -- ja!
  \override LyricText #'font-size = #-1
  \override LyricText #'extra-offset = #'(0 . 0.9)
  \override LyricHyphen #'extra-offset = #'(0 . 0.9)
  Al -- le --
  \once \override LyricText #'X-offset = #-0.6
  lu -- ja!
  \revert LyricText #'extra-offset
  \revert LyricHyphen #'extra-offset
  \override StanzaNumber #'font-size = #-2
  \override LyricText #'font-size = #-2
  \set stanza = "(2."
  I w_ran -- \tweak #'X-offset #-0.6 ny...)
}

stanzas = \markup \larger  {
  \fill-line {
    \huge {
      \hspace #0.1
      \column {
        \vspace #3
        \line {
          "2. "
          \column {
            \line { "I w ranny" \underline brzask "pierwszego dnia" }
            \line { \concat { "Do puste" \underline go } "grobu Pana" }
            \line { \concat { "Przyszli zdu" \underline mie ni } uczniowie, }
            "Alleluja!"
          }
        }
        \vspace #1
        \line {
          "3. "
          \column {
            \line { \concat { "W ten Zmartwych" \underline wstania } "jasny dzień," }
            \line { \concat { "Smętny zwąt" \underline pie nia } "okrył cień" }
            \line { \concat { "Serce To" \underline ma sza } "Apostoła," }
            "Alleluja!"
          }
        }
        \vspace #1
        \line {
          "4. "
          \column {
            \line { \concat { "Spojrzyj To" \underline ma szu, } "tylko sam" }
            \line { "Na bok i" \concat { \underline rę ce } "pełne ran," }
            \line { \concat { "Nie bądź nie" \underline wie rny, } "wierny bądź," }
            "Alleluja!"
          }
        }
        \vspace #1
        \line {
          "5. "
          \column {
            \line { "Tomasza" \underline wzrok "rozjaśniał znów," }
            \line { "Upadł do" \concat { \underline Zba wiciela } "nóg," }
            \line { "Wołając" \concat { “ \underline Pan } mój i Bóg mój!”, }
            "Alleluja!"
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

\score {
  \new ChoirStaff <<
    \new Staff = women <<
      \clef treble
      \new Voice = soprano {
        \voiceOne
        \sopranomelody
      }
      \new Voice = alto {
        \voiceTwo
        \altomelody
      }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #1
    }
    \lyricsto alto \text

    \new Staff = men <<
      \clef bass
      \new Voice = tenor {
        \voiceOne
        \tenormelody
      }
      \new Voice = bass {
        \voiceTwo
        \bassmelody
      }
    >>
  >>
  \layout {
    indent = 0\cm
  }
}

\stanzas