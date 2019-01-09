\version "2.21.0"
\include "../szablon/formaty/default-a5-paper.ily"
\bookOutputSuffix "pl-a5-4pieciolinie"

#(set-global-staff-size 15)

\paper {
  top-markup-spacing.basic-distance = 5
  system-system-spacing.basic-distance = 17
  score-markup-spacing.basic-distance = 16
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #0.5
}

liczbaKolumn = #2
powiekszenieZwrotek = #1.15
interlinia = #3
odstepMiedzyZwrotkami = #1
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka.ily"
\include "tekst-polski.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
