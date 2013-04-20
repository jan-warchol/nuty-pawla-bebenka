\version "2.17.3"
#(set-global-staff-size 17)

\header	{
  title = "O dzieci Boże, dosyć łez"
  poet = "słowa: Jan Tisserant"
  composer = "opracowanie: Paweł Bębenek"
  tagline = \markup {
    skład nut: Jan Warchoł
    (jan.warchol@gmail.com, 509 078 203)
  }
}

\paper {
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
  e2. \bar "|." e4 g a
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
  b2. \bar "|." e4 g fis
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
      a2
      a4
      a1.(
      \revert Stem #'length
      b2.)
    }
    \new Lyrics \with { alignAboveContext = men fontSize = -2 }
    \lyricsto tenor \lyricmode {
      Al -- le -- lu -- ja!
    }
  >>
  \bar "|." b4 b b
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
  e'2.) \bar "|." e4 e e
}
akordy = \chordmode {
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1."
  O dzie -- ci Bo -- że, do -- syć łez,
  bo Chrys -- tus dziś zmar -- twych -- wstan jest,
  Król ży -- cia, wiecz -- nej chwa -- ły Król,
  Al -- le -- lu -- ja! 
  \override LyricText #'font-size = #-1
  \override LyricText #'extra-offset = #'(0 . 1)
  \override LyricHyphen #'extra-offset = #'(0 . 1)
  Al -- le -- 
  \once \override LyricText #'X-offset = #-0.6 
  lu -- ja!
  \revert LyricText #'font-size
  \revert LyricText #'extra-offset 
  \revert LyricHyphen #'extra-offset 
  \set stanza = "(2."
  I w_ran -- ny...)
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column {
            "I w ranny brzask pierwszego dnia"
            "Do pustego grobu Pana"
            "Przyszli zdumieni uczniowie,"
            "Alleluja! Alleluja!"
          }
        }
        \vspace #1
        \line {
          "3. "
          \column {
            "W ten Zmartwychwstania jasny dzień,"
            "Smętny zwątpienia okrył cień"
            "Serce Tomasza Apostoła,"
            "Alleluja! Alleluja!"
          }
        }
        \vspace #1
        \line {
          "4. "
          \column {
            "Spojrzyj Tomaszu, tylko sam"
            "Na bok i ręce pełne ran,"
            "Nie bądź niewierny, wierny bądź,"
            "Alleluja! Alleluja!"
          }
        }
        \vspace #1
        \line {
          "5. "
          \column {
            "Tomasza wzrok rozjaśniał znów,"
            "Upadł do Zbawiciela nóg,"
            "Wołając “Pan mój i Bóg mój!”,"
            "Alleluja! Alleluja!"
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