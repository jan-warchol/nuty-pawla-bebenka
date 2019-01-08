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
  system-count = #3
  top-markup-spacing #'basic-distance = #8
  markup-system-spacing #'basic-distance = #18
  line-width = 180 \mm
  last-bottom-spacing #'basic-distance = 45
  ragged-last-bottom = ##f
}
%--------------------------------MELODY--------------------------------
sopranomelody = \relative c'' {
  d,4 fis a a | a( b) a2 | g4 fis e d | d1 |
  d4 fis a a | a( b) a2 | g4 fis e d | d1 |
  % 9: Tobie dziś...
  a'4 a b cis | d( cis) a2 | b4 a g fis | e1 |
  fis4 a g fis | e( d) e2 | fis4 d e d | d1 \bar "|."
}
altomelody = \relative f' {
  d4 d8[ e] fis4 fis | e2 e2 | d4 d b b | d1 |
  d4 d8[ e] fis4 fis | e2 e2 | d4 d b b | d1 |
  % 9: Tobie dziś...
  fis4 fis fis e | fis2 fis | d4 d d d | cis1 |
  d4 fis d d | cis( b) cis2 | d4 b cis b | d1 \bar "|."
}
tenormelody = \relative c' {
  a4 a a a | a2 a | b4 b g g | a1 |
  a4 a a a | a2 a | b4 b g g | a1 |
  % 9: Tobie dziś...
  a4 a b a | b( a) a2 | g4 g b b | a1 |
  a4 a b b | a2 a | b4 b a g | a1 \bar "|."
}
bassmelody = \relative f {
  d4 d d d | cis2 cis | b4 b g a | d1 |
  d4 d d d | cis2 cis | b4 b g a | d1 |
  % 9: Tobie dziś...
  d4 d d a | b( cis) d2 | g,4 a b b | cis1 |
  d4 d d d | cis2 cis | b4 b cis d | d1 \bar "|."
}
akordy = \chordmode {
  \set chordNameLowercaseMinor = ##t
  d1 a b2:m g d1
  d1 a b2:m g d1
  d1 b2:m d2 g1 a
  d2 g a1 b2:m a4 g d1
}
%--------------------------------LYRICS--------------------------------
text =  \lyricmode {
  \set stanza = "1. "
  Zbli -- żam się w_po -- ko -- rze i ni -- sko -- ści swej,
  wiel -- bię Twój ma -- je -- stat, skry -- ty \tweak #'X-offset #-2.3 w_Ho -- stii tej.
  To -- bie dziś \tweak #'X-offset #-2.3 w_o -- fie -- rze se -- rce da -- ję swe,
  o u -- twier -- dzaj \tweak #'X-offset #-2.3 w_wie -- rze, Je -- zu, dzie -- ci Twe.
}
stanzas = \markup {
  \vspace #2
  \fill-line {
    {
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
        \vspace #0.5
        \line {
          "3. "
          \column {
            "Bóstwo Swe na Krzyżu skryłeś wobec nas;"
            "Tu ukryte z Bóstwem Człowieczeństwo wraz;"
            "Lecz w Oboje wierząc, wiem, że dojdę tam,"
            "Gdzieś przygarnął łotra: do Twych niebios bram."
          }
        }
        \vspace #0.5
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
      \vspace #0.1
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
        \vspace #0.5
        \line {
          "6. "
          \column {
            "Ty, co jak pelikan Krwią swą karmisz lud,"
            "Przywróć mi niewinność, oddal grzechów brud;"
            "Oczyść mnie Krwią swoją, która wszystkich nas"
            "Jedną kroplą może obmyć z win i zmaz."
          }
        }
        \vspace #0.5
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


twostaveschoir = {
  \new ChoirStaff <<
    \new ChordNames { \germanChords \akordy }
    \new Staff = women {
      \clef treble
      \set Staff.instrumentName = \markup { \column { "S " "A " } }
      \set Staff.shortInstrumentName = \markup { \column { "S " "A " } }
      <<
        \new Voice = soprano {
          \voiceOne
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \sopranomelody
        }
        \new Voice = alto {
          \voiceTwo
          \commonprops
          \set Voice.midiInstrument = "english horn"
          \altomelody
        }
      >>
    }
    \new Lyrics = alllyrics \lyricsto soprano \text

    \new Staff = men {
      \clef bass
      \set Staff.instrumentName = \markup { \column { "T " "B " } }
      \set Staff.shortInstrumentName = \markup { \column { "T " "B " } }
      <<
        \new Voice = tenor {
          \voiceOne
          \commonprops
          \set Voice.midiInstrument = "english horn"
          \tenormelody
        }
        \new Voice = bass {
          \voiceTwo
          \commonprops
          \set Voice.midiInstrument = "clarinet"
          \bassmelody
        }
      >>
    }
  >>
}

%---------------------------------MIDI---------------------------------
\score {
  \unfoldRepeats \twostaveschoir
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
  \twostaveschoir
  \layout {
    indent = 0\cm
  }
}

\stanzas
