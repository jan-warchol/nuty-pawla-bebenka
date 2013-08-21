\version "2.17.3"

#(set-global-staff-size 13.7)
#(set-default-paper-size "a5")

\paper {
  indent = 0 \mm
  left-margin = 11 \mm
  right-margin = 10 \mm
  top-markup-spacing #'basic-distance = 1
  system-system-spacing #'basic-distance = 13
  score-markup-spacing #'basic-distance = 11
  \include "uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-0.3
}

#(define powiekszenie-zwrotek '(1.05 . 1.0))
#(define interlinia '(baseline-skip . 2.3))
odstepMiedzyZwrotkami = \markup \vspace #0.5
odstepOdNumeruDoZwrotki = \markup \hspace #1

\bookOutputSuffix "a5"
\include "muzyka-i-tekst.ily"
\include "struktura-SATB-2-pieciolinie.ily"
\include "ustawienia-formatowania.ily"
