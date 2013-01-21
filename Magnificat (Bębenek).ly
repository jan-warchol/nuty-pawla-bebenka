\version "2.17.3"
#(set-global-staff-size 16)

m = #(define-music-function (parser location off) (number?)
       #{
         \once \override Lyrics.LyricText #'X-offset = #off
       #})

\header	{
  title = "Magnificat"
  composer = "muzyka: Paweł Bębenek"
}

\paper {
  paper-width = 165 \mm
  paper-height = 240 \mm
  line-width = 145 \mm
  top-margin = 4 \mm
  bottom-margin = 6\mm
  page-count = 1
  system-system-spacing #'basic-distance = #15
  % markup-system-spacing #'basic-distance = #15
  tagline = ##f
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative f' {
  \dynamicUp
  \key d \major
  \time 4/4
  \repeat volta 2 {
    d8 a'4 g8 a c b g
    a4 a \shape Slur #'((0 . 0)(0 . -0.55)(0.2 . -0.6)(0 . -0.2)) g( fis8) g
    a1
    d,8 a'4 g8 a c b g
    a4 a g( fis8) d
  }
  \alternative {
    { e1 }
    { d1 }
  }
  \bar "|."
  \cadenzaOn
  d8 e [ \melisma fis ] \melismaEnd fis\breve
  fis8 [ \melisma e8 ] \melismaEnd e [ \melisma g ] \melismaEnd
  fis8
  fis [ \melisma e ] \melismaEnd e [ \melisma fis ] \melismaEnd
  \bar "dashed"
  fis\breve
  fis8 fis d e [ \melisma fis ] \melismaEnd e e4
  \cadenzaOff
  \bar "|."
}
altomelody = \relative f' {
  \dynamicUp
  \key d \major
  \time 4/4
  \repeat volta 2 {
    \tweak Stem #'length 5 d8 d4 e8 e e16\melisma d\melismaEnd e8 g
    fis8\melisma e\melismaEnd d4 d d
    \shape Slur #'((0.2 . 1) (1 . 0) (-1 . 0) (0 . 0)) d2 ( d8 e g fis)
    d8 d4 e8 e e16\melisma d\melismaEnd e8 g
    fis8\melisma e\melismaEnd d4 d d
  }
  \alternative {
    {
      \shape Slur #'((0 . 0.2) (0 . 0.8) (0 . 1) (-0.5 . 1.4))
      \tweak Beam #'positions #'(-5.3 . -5)
      d8( b d e d4 cis)
    }
    {
      \shape Slur #'((0 . 0.4) (0 . 0.5) (-0.3 . 0.1) (-0.4 . 0.3))
      b4.( \tweak Stem #'length #5.5 c8 d2)
    }
  }
  \bar "|."
  \cadenzaOn
  d8 d4 d\breve e4 e d8 d4 d
  \bar "dashed"
  d\breve d8 d d d4 d8 cis4
  \cadenzaOff
  \bar "|."
}
tenormelody = \relative f {
  \dynamicUp
  \key d \major
  \time 4/4
  \repeat volta 2 {
    a4( d) c c8\melisma b\melismaEnd
    a4 a b8[\melisma a]\melismaEnd b[\melisma g]\melismaEnd
    a4.( b8) a2
    a4( d) c c8\melisma b\melismaEnd
    a2 b8[\melisma a]\melismaEnd b[\melisma g]\melismaEnd
  }
  \alternative {
    { a1 }
    { g2( a) }
  }
  \bar "|."
  \cadenzaOn
  a8 a4 a\breve a4 a4 a8 b4 b4
  \bar "dashed"
  b\breve b8 b b b4 b8 a4
  \cadenzaOff
  \bar "|."
}
bassmelody = \relative f {
  \dynamicUp
  \key d \major
  \time 4/4
  \repeat volta 2 {
    \tweak Stem #'length #5.5 d2 e4 e
    fis fis g g
    d2 d
    \tweak Stem #'length #5.5 d2 e4 e
    fis2 g4 g
  }
  \alternative {
    {
      \shape Slur #'((0 . -0.4)(0 . -1)(-0.5 . 0)(0 . 0))
      a2( a,)
    }
    { \tweak Stem #'length #4 g( d') }
  }
  \bar "|."
  \cadenzaOn
  d8 d4 d\breve cis4 cis b8 a4 a
  \bar "dashed"
  g\breve g8 a b b4 cis8 cis4
  \cadenzaOff
  \bar "|."
}
%--------------------------------LYRICS--------------------------------
womentext = \lyricmode {
  Mag -- ni -- fi -- cat a -- ni -- ma me -- a
  Do -- \tweak #'X-offset #-1.5 mi -- num,
  \tweak #'X-offset #-2.5 Mag -- \tweak #'X-offset #0 ni -- fi -- cat a -- ni -- ma me -- a
  Do -- \tweak #'X-offset #-1.2 mi -- num.
  \tweak #'Y-offset #-0.4 \tweak #'X-offset #-0.8 num.

  \overrideProperty #"Score.NonMusicalPaperColumn"
  #'line-break-system-details #'((alignment-distances . (15)))

  \override LyricText #'extra-offset = #'(0 . -0.5)
  \override LyricHyphen #'extra-offset = #'(0 . -0.5)
  Et ex -- \tweak #'X-offset #-0.7 sultavit spi -- ri -- tus me -- us
  \tweak #'X-offset #-0.3 in_Deo sal -- va -- to -- re me -- o.
}

mentext = \lyricmode {
  Mag -- ni -- fi -- cat a -- ni -- ma me -- a,
  Mag -- ni -- fi -- cat Do -- mi -- num.
  \tweak #'Y-offset #-0.55 num.
}

stanzas = \markup {
  \fill-line {
    \large {
      \hspace #1
      \column {
        \line {
          "  2. "
          \column {
            "Quia respexit humilitatem ancillæ suæ;"
            "ecce enim ex hoc beatam me dicent omnes generationes."
          }
        }
        \vspace #0.35
        \line {
          "  3. "
          \column {
            "Quia fecit mihi magna, qui potens est,"
            "et sanctum nomen eius."
          }
        }
        \vspace #0.35
        \line {
          "  4. "
          \column {
            "Et misericordia eius in progenies et progenies"
            "timentibus eum."
          }
        }
        \vspace #0.35
        \line {
          "  5. "
          \column {
            "Fecit potentiam in brachio suo,"
            "dispersit superbos mente cordis sui."
          }
        }
        \vspace #0.35
        \line {
          "  6. "
          \column {
            "Deposuit potentes de sede"
            "et exaltavit humiles."
          }
        }
        \vspace #0.35
        \line {
          "  7. "
          \column {
            "Esurientes implevit bonis"
            "et divites dimisit inanes."
          }
        }
        \vspace #0.35
        \line {
          "  8. "
          \column {
            "Suscepit Israel puerum suum,"
            "recordatus misericordiæ suæ."
          }
        }
        \vspace #0.35
        \line {
          "  9. "
          \column {
            "Sicut locutus est ad patres nostros,"
            "Abraham et semini eius in sæcula."
          }
        }
        \vspace #0.35
        \line {
          "10. "
          \column {
            "Gloria Patri, et Filio,"
            "et Spiritui Sancto."
          }
        }
        \vspace #0.35
        \line {
          "11. "
          \column {
            "Sicut erat in principio, et nunc et semper,"
            "et in sæcula sæculorum. Amen."
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
    \new Lyrics = sopranolyrics \with {
      \override VerticalAxisGroup #'nonstaff-unrelatedstaff-spacing #'padding = #1.75
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.4
    }
    \lyricsto soprano \womentext

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
    \new Lyrics = menlyrics \with {
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'padding = #0.3
      \override VerticalAxisGroup #'nonstaff-relatedstaff-spacing #'basic-distance = #0.3
    }
    \lyricsto tenor \mentext
  >>
  \layout {
    indent = 0\cm
    \override NoteHead #'style = #'altdefault
  }
}

\stanzas