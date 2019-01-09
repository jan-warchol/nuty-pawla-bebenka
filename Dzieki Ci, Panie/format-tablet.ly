\version "2.21.0"
\include "../szablon/formaty/default-tablet-paper.ily"
\bookOutputSuffix "tablet"

#(set-global-staff-size 13.5)

\paper {
  top-markup-spacing.basic-distance = 4
  system-system-spacing.basic-distance = 11
  score-markup-spacing.basic-distance = 8
  last-bottom-spacing.padding = -2
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #0
}

liczbaKolumn = #1
powiekszenieZwrotek = #1.1
interlinia = #2.2
odstepMiedzyZwrotkami = #0.4
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
