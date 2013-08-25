\version "2.17.3"
\bookOutputSuffix "tablet"

#(set-global-staff-size 13.5)


\paper {
  paper-height = 20 \cm
  paper-width = 15 \cm
  indent = 0 \mm
  left-margin = 7.5 \mm
  right-margin = 5 \mm
  top-margin = 1 \mm
  bottom-margin = 2 \mm
  top-markup-spacing #'basic-distance = 4
  system-system-spacing #'basic-distance = 12
  score-markup-spacing #'basic-distance = 9
  last-bottom-spacing #'padding = -2
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #0
}

#(define powiekszenie-zwrotek '(1.05 . 1.0))
#(define interlinia '(baseline-skip . 2.2))
odstepMiedzyZwrotkami = \markup \vspace #0.3
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
