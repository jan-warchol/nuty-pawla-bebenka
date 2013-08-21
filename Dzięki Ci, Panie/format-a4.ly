\version "2.17.3"

#(set-global-staff-size 17)

\paper {
  indent = 0 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 4
  system-system-spacing #'basic-distance = 13
  score-markup-spacing #'basic-distance = 12
  \include "uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1
}

#(define powiekszenie-zwrotek '(1.15 . 1.15))
#(define interlinia '(baseline-skip . 2.4))
odstepMiedzyZwrotkami = \markup \vspace #0.8
odstepOdNumeruDoZwrotki = \markup \hspace #1

\bookOutputSuffix "a4"
\include "muzyka-i-tekst.ily"
\include "struktura-SATB-2-pieciolinie.ily"
\include "ustawienia-formatowania.ily"
