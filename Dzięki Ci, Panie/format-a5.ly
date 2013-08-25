\version "2.17.3"
\bookOutputSuffix "a5"

#(set-global-staff-size 13.7)
#(set-default-paper-size "a5")

\paper {
  indent = 0 \mm
  left-margin = 11 \mm
  right-margin = 10 \mm
  top-markup-spacing #'basic-distance = 1
  system-system-spacing #'basic-distance = 13
  score-markup-spacing #'basic-distance = 11
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-0.3
}

#(define powiekszenie-zwrotek '(1.05 . 1.0))
#(define interlinia '(baseline-skip . 2.3))
odstepMiedzyZwrotkami = \markup \vspace #0.5
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "struktura-zwrotek.ily"

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup
    #'nonstaff-relatedstaff-spacing #'padding = #0.5
  }
}
