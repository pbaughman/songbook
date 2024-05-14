\language "english"
\version "2.24.3"

\score {
  \new Staff {
    \relative { 
      \key g \major
      \partial 4
      a'8 a b a a fs a fs4 fs8 e d d b d4 
      d8 e fs a a b a4 a8 a b  e, e fs e4
  
      a8  a b a a fs a4 fs8 fs e d d b d4 
      d8 e fs( a) fs d e( g) e cs d2
  
      d'8 cs b4 d8 b a4 fs8 g a a a a( d) b fs e
      <<
        {a b a g fs e d8 d4 d8 fs4 fs8 fs g g g g gs4}
        \new Staff { 
          \key g \major
          a8 b a g fs e d2( fs g gs4)
        }
        \addlyrics {
          to the bottom _ of the sea __ 
        }
      >>
  
    d8 e fs( a) fs d e( g) e cs d2
    }
  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}
