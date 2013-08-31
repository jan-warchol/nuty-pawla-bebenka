\version "2.17.3"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4-2pieciolinie"

#(set-global-staff-size 18)

\paper {
  left-margin = 15 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 12
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 20
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #4.4
}

#(define powiekszenie-zwrotek '(1.2 . 1.2))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "../szablon/struktura-zwrotek.ily"
\include "specjalne-ustawienia-utworu.ily"
