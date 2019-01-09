\version "2.21.0"

\paper {
}

\layout {
  \mergeDifferentlyDottedOn
  \context {
    \Lyrics
    \override VerticalAxisGroup.
    nonstaff-relatedstaff-spacing.padding = #1
  }
}
