%{TODO:
  sprawdzić akordy - chyba są przekombinowane.
  Może to w ogóle nie jest harmonizowalne?
%}

\version "2.12.3"
\pointAndClickOff
\header	{
  title = "Zbliżam się w pokorze"
  poet = "słowa: św. Tomasz z Akwinu"
  composer = "melodia gregoriańska"
  arranger = "opracowanie: Paweł Bębenek"
}
commonprops = {
  \autoBeamOff
  \tempo 4=90
  \set Score.tempoHideNote = ##t
  \key d \major
  \time 4/4
}
\paper {
  system-count = #2
}
#(set-global-staff-size 17)
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  d,4 fis a a | a( b) a2 | g4 fis e d | d1 |
  d4 fis a a | a( b) a2 | g4 fis e d | d1 |
  % 9: Tobie dziś...
  a'4 a b( cis) | \time 5/4 d d( cis) a2 | \time 4/4 b4 a g fis | e1 |
  fis4 a g fis | e( d) e2 | fis4 d e d | d1 \bar "|."
}
altomelody = \relative f' {
  d4 d8[ e] fis4 fis | e2 e2 | d4 d b b | d1 |
  d4 d8[ e] fis4 fis | e2 e2 | d4 d b b | d1 |
  % 9: Tobie dziś...
  fis4 fis fis( e) | \time 5/4 fis4 fis2 fis | \time 4/4 d4 d d d | cis1 |
  d4 fis d d | cis( b) cis2 | d4 b cis b | d1 \bar "|."
}
tenormelody = \relative c' {
  a4 a a a | a2 a | b4 b g g | a1 |
  a4 a a a | a2 a | b4 b g g | a1 |
  % 9: Tobie dziś...
  a4 a b( a) | \time 5/4 b b( a) a2 | \time 4/4 g4 g b b | a1 |
  a4 a b b | a2 a | b4 b a g | a1 \bar "|."
}
bassmelody = \relative f {
  d4 d d d | cis2 cis | b4 b g a | d1 |
  d4 d d d | cis2 cis | b4 b g a | d1 |
  % 9: Tobie dziś...
  d4 d d( a) | \time 5/4 b b( cis) d2 | \time 4/4 g,4 a b b | cis1 |
  d4 d d d | cis2 cis | b4 b cis d | d1 \bar "|."
}
akordy = \chordmode {
  d1 a g4 b:m e:m g:/a d1
  d1 a g4 b:m e:m g:/a d1
  d2 b4:m a b2:m fis4:m d2 g4 d:sus4 g b:m a1
  d2 g4 b:m a1 b2:m a4 g d1
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Zbli -- żam się w_po -- ko -- rze i ni -- sko -- ści swej,
  wiel -- bię Twój ma -- je -- stat, skry -- ty w_Ho -- stii tej.
  To -- bie dziś w_o -- fie -- rze se -- rce da -- ję swe,
  o u -- twier -- dzaj w_wie -- rze, Je -- zu, dzie -- ci Twe.
}
stanzas = \markup {
  \fill-line {
    \large {
      \hspace #0.1
      \column {
        \line {
          "2. "
          \column	{
            "Mylą się, o Boże, w Tobie wzrok i smak;"
            "Kto się im poddaje, temu wiary brak;"
            "Ja jedynie wierzyć Twej nauce chcę,"
            "Że w postaci Chleba utaiłeś się."
          }
        }
        \hspace #0.1
        \line {
          "3. "
          \column {
            "Bóstwo Swe na Krzyżu skryłeś wobec nas;"
            "Tu ukryte z Bóstwem Człowieczeństwo wraz;"
            "Lecz w Oboje wierząc, wiem, że dojdę tam,"
            "Gdzieś przygarnął łotra: do Twych niebios bram."
          }
        }
        \hspace #0.1
        \line {
          "4. "
          \column {
            "Jak niewierny Tomasz Twych nie szukam ran,"
            "Lecz wyznaję z wiarą, żeś mój Bóg i Pan,"
            "Pomóż wierze mojej, Jezu, łaską Swą,"
            "Ożyw mą nadzieję, rozpal miłość mą."
          }
        }
      }
      \hspace #0.1
      \column {
        \line {
          "5. "
          \column	{
            "Ty, coś upamiętnił śmierci Bożej czas,"
            "Chlebie Żywy, życiem swym darzący nas,"
            "Spraw, bym dla swej duszy życie z Ciebie brał,"
            "Bym nad wszelką słodycz Ciebie poznać chciał."
          }
        }
        \hspace #0.1
        \line {
          "6. "
          \column {
            "Ty, co jak pelikan Krwią swą karmisz lud,"
            "Przywróć mi niewinność, oddal grzechów brud;"
            "Oczyść mnie Krwią swoją, która wszystkich nas"
            "Jedną kroplą może obmyć z win i zmaz."
          }
        }
        \hspace #0.1
        \line {
          "7. "
          \column {
            "Pod zasłoną teraz, Jezu, widzę Cię;"
            "Niech pragnienie serca kiedyś spełni się,"
            "Bym Oblicze Twoje tam oglądać mógł,"
            "Gdzie wybranym miejsce przygotował Bóg."
          }
        }
      }
      \hspace #0.1
    }
  }
}
%--------------------------------ALL-FILE VARIABLE--------------------------------

fourstaveschoir = {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = soprano {
      \clef treble
      \set Staff.instrumentName = "S "
      \set Staff.shortInstrumentName = "S "
      \new Voice = soprano {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \sopranomelody
      }
    }
    \new Lyrics = womenlyrics \lyricsto soprano \text

    \new Staff = alto {
      \clef treble
      \set Staff.instrumentName = "A "
      \set Staff.shortInstrumentName = "A "
      \new Voice = alto {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \altomelody
      }
    }

    \new Staff = tenor {
      \clef "treble_8"
      \set Staff.instrumentName = "T "
      \set Staff.shortInstrumentName = "T "
      \new Voice = tenor {
        \commonprops
        \set Voice.midiInstrument = "english horn"
        \tenormelody
      }
    }
    \new Lyrics = menlyrics \lyricsto tenor \text

    \new Staff = bass {
      \clef bass
      \set Staff.instrumentName = "B "
      \set Staff.shortInstrumentName = "B "
      \new Voice = bass {
        \commonprops
        \set Voice.midiInstrument = "clarinet"
        \bassmelody
      }
    }
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \fourstaveschoir
  \midi {
    \context {
      \Staff \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
      \remove "Dynamic_performer"
    }
  }
}

%--------------------------------LAYOUT--------------------------------
\score {
  \fourstaveschoir
  \layout {
    indent = 0\cm
    \context {
      \Staff \consists "Ambitus_engraver"
    }
  }
}

\stanzas
