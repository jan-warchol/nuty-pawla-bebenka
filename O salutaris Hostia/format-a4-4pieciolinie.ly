\version "2.21.0"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4-4pieciolinie"

#(set-global-staff-size 17.5)

\paper {
  system-count = 3
  left-margin = 22 \mm
  right-margin = 22 \mm
  top-markup-spacing.basic-distance = 5
  system-system-spacing.basic-distance = 18
  score-markup-spacing.basic-distance = 12
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1.4
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
#(define interlinia '(baseline-skip . 3)) % 3 is Lily default
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
%\tlumaczenie

\layout {
  \context {
    \Lyrics
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #0.3
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1
  }
}