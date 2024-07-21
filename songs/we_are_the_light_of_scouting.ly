\language "english"
\version "2.24.3"

\score {
  \relative {
    \sectionLabel "Verse"
    \time 2/4
    \key c \major
    {
      c'4 c8. d16 e8 c e g c4 c8. c16 c8 g e c
      f4 a8. f16 e8 g e c d4 g8. g16 g8( f e d)
      c4 c8. d16 e8 c e g c8 c c c c g e c
      f4 a8. f16 e8 g e c d4 c8. b16 c2
    }
    \addlyrics {
      We are the light of scout -- ing we bring the flight to eag -- les.
      We are the light of scout -- ing all 'or the world. __
      We'll nev -- er be hiked und -- er list -- en to our scout -- ing thund -- er
      We are the light of scout -- ing all 'or the world.
    }
    \section
    \sectionLabel "Chorus (quietly)"
    {
      c4 c8. d16 e8 c e g c4 c8. c16 c8 g e c
      f4 a8. f16 e8 g e c d4 g8. g16 g2
      c,4 c8. d16 e8 c e g c4 c8. c16 c8 g e c
      f4 a8. f16 e8 g e c d4 c8. b16 c2
    }
    \addlyrics {
      dum dum da da da da da dum dum da da da da da
      dum dum da da da da da dum dum da da
      dum dum da da da da da dum dum da da da da da
      dum dum da da da da da dum dum da da
    }
  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}

\markup \wordwrap {
  The tune here is (more-or-less) Scotland the Brave.

  Here it's written in the key of C instead of D Major, so I don't need to tune
  the drone strings on my hurdy gurdy up to sound right.
}

