\version "2.21.0"
\include "../szablon/formaty/default-a5-paper.ily"
\bookOutputSuffix "a5"

#(set-global-staff-size 13.7)

\paper {
  top-markup-spacing.basic-distance = 1
  system-system-spacing.basic-distance = 13
  score-markup-spacing.basic-distance = 9
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-0.3
}

liczbaKolumn = #1
powiekszenieZwrotek = #1.1
interlinia = #2.3
odstepMiedzyZwrotkami = #0.5
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
