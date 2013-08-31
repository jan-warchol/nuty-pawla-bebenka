\version "2.17.3"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "pl-a4-2pieciolinie"

#(set-global-staff-size 18)

\paper {
  top-markup-spacing #'basic-distance = 14
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 18
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #4
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka.ily"
\include "tekst-polski.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
