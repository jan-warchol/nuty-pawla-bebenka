\version "2.21.0"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4-2pieciolinie"

#(set-global-staff-size 18)

\paper {
  left-margin = 15 \mm
  right-margin = 15 \mm
  top-markup-spacing.basic-distance = 12
  system-system-spacing.basic-distance = 18
  score-markup-spacing.basic-distance = 20
  \include "../szablon/uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #4.4
}

liczbaKolumn = #2
powiekszenieZwrotek = #1.2
interlinia = #3
odstepMiedzyZwrotkami = #2
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-2-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
