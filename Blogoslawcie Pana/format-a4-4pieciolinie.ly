\version "2.21.0"
\include "../szablon/formaty/default-a4-paper.ily"
\bookOutputSuffix "a4-4pieciolinie"

#(set-global-staff-size 18)

\paper {
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
interlinia = #3
odstepMiedzyZwrotkami = #2
odstepOdNumeruDoZwrotki = #1
TwoVoicesPerStaff = ##f

\include "../szablon/globalne-ustawienia-formatowania.ily"
\include "../szablon/dostosowanie-szablonu.ily"
\include "muzyka-i-tekst.ily"
\include "satb.ly"
\include "specjalne-ustawienia-utworu.ily"

\zwrotki \liczbaKolumn \numerZwrotki \powiekszenieZwrotek \interlinia \odstepMiedzyZwrotkami \odstepOdNumeruDoZwrotki \dalszeZwrotki
