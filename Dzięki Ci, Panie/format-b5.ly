\version "2.17.3"
\include "../szablon/formaty/default-b5-paper.ily"

#(set-global-staff-size 16)

\paper {
  top-markup-spacing #'basic-distance = 2
  system-system-spacing #'basic-distance = 13
  score-markup-spacing #'basic-distance = 10
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #0
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 2.3))
odstepMiedzyZwrotkami = \markup \vspace #0.5
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
