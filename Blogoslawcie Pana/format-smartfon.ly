\version "2.21.0"
\include "../szablon/formaty/default-smartfon-paper.ily"
\bookOutputSuffix "smartfon"

#(set-global-staff-size 16)

\paper {
  top-markup-spacing.basic-distance = 0
  %top-markup-spacing.padding = 0
  markup-system-spacing.basic-distance = 0
  top-system-spacing.basic-distance = 9
  system-system-spacing.basic-distance = 17
  score-markup-spacing.basic-distance = 13.5
  last-bottom-spacing.padding = -2
  \include "../szablon/uklad-tytulow.ily"
  \include "../szablon/stopka-w-smartfonach.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #-1
}

liczbaKolumn = #2
powiekszenieZwrotek = #1.1
interlinia = #3
odstepMiedzyZwrotkami = #1
odstepOdNumeruDoZwrotki = #1

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "muzyka-i-tekst.ily"
\include "../szablon/struktura-SATB-4-pieciolinie.ily"
\include "specjalne-ustawienia-utworu.ily"
