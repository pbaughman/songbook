\language "english"
\version "2.24.3"

\score {
  \relative {
    \sectionLabel "Verse"
    \key d \major
    {
      d'4 d e d g g fs2 b,4 cs d b a a a2
      d4 cs8 d e4 d g g fs2 b,4 cs d b a a a2
      fs'4. e8 d4 fs a4. g8 fs2
      b,4 cs d g fs e d2
    }
  }
  \layout {}
  \midi {
    \tempo 4=100
  }
}
