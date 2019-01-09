\version "2.21.0"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4"

#(set-global-staff-size 18)

\paper {
  system-count = #3
  top-markup-spacing.basic-distance = 10
  system-system-spacing.basic-distance = 18
  score-markup-spacing.basic-distance = 18
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #2
}

liczbaKolumn = #2
powiekszenieZwrotek = #1.2
interlinia = #2.7
odstepMiedzyZwrotkami = #1.8
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
