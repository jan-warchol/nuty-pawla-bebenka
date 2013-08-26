\version "2.17.3"
\include "../szablon/formaty/default-smartfon-paper.ily"

#(set-global-staff-size 16)

\paper {
  top-markup-spacing #'basic-distance = 0
  %top-markup-spacing #'padding = 0
  markup-system-spacing #'basic-distance = 0
  top-system-spacing #'basic-distance = 6
  system-system-spacing #'basic-distance = 0
  score-markup-spacing #'basic-distance = 13.5
  %last-bottom-spacing #'padding = 0
  \include "../szablon/uklad-tytulow.ily"
  \include "../szablon/stopka-w-smartfonach.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-1
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 2.3))
odstepMiedzyZwrotkami = \markup \vspace #1
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
