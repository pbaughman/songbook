\language "english"
\version "2.24.3"

\score {
  \relative {
    \sectionLabel "Verse"
    \key g \major
    \partial 4
    {
      d'8. g16 b4 b b r b8. a16 g8. e16 d4
      d8. fs16 a2 r4 g8. a16 b2 r4
      d,8. g16 b4 b b r b8. a16 g8. e16 d4
      d8. d16 e4 c'4 b4 a4 g2 r4
    }
    \addlyrics {
      There are mice, mice, mice, run -- ing through the rice
      at the store, at the store,
      There are mice, mice, mice, run -- ing through the rice
      at the quar -- ter mas -- ter store.
    }
    \section
    \sectionLabel "Chorus"
    <<
      {
        d4 g g g fs e e e
        e a a a g fs e d
        d g r b r a a c fs, g
      }
      \addlyrics{
        My eyes are dim I can -- not see
        I have not brought my specs with me
        I have not brought my specs with me
      }
      \new Staff {
        \clef bass \key g \major
        {
          d,4 g2~ g4 fs e2~ e4
          e4 a2~ a4 g fs2~ fs4
          r4 r g r b a a c fs, g
        }
        \addlyrics {
          My eyes are dim
          I can -- not see
          have not brought my specs with me
        }
      }
    >>
  }
  \layout {}
  \midi {
    \tempo 4=130
  }
}
