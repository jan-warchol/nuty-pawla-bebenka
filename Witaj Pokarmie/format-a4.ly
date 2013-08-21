\version "2.17.3"

#(set-global-staff-size 18)

\paper {
  #(define fonts
     (make-pango-font-tree "FreeSerif"
       "Nimbus Sans"
       "Luxi Mono"
       (/ staff-height pt 20)))
  indent = 0 \mm
  left-margin = 16 \mm
  right-margin = 15 \mm
  top-markup-spacing #'basic-distance = 10
  system-system-spacing #'basic-distance = 18
  score-markup-spacing #'basic-distance = 18
  \include "uklad-tytulow.ily"
  %annotate-spacing = ##t
}

\header {
  odsteppotytule = \markup \vspace #2
}

#(define powiekszenie-zwrotek '(1.1 . 1.1))
odstepMiedzyZwrotkami = \markup \vspace #2
odstepOdNumeruDoZwrotki = \markup \hspace #1

\bookOutputSuffix "a4"
\include "Witaj Pokarmie.ly"
