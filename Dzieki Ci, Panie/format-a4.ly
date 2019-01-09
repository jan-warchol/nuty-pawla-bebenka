\version "2.21.0"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4"

#(set-global-staff-size 17)

\paper {
  top-markup-spacing.basic-distance = 4
  system-system-spacing.basic-distance = 13
  score-markup-spacing.basic-distance = 12
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #1
}

liczbaKolumn = #1
powiekszenieZwrotek = #1.15
interlinia = #2.4
odstepMiedzyZwrotkami = #0.8
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
