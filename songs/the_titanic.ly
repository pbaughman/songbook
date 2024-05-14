\language "english"
\version "2.24.3"

\score {
  \new Staff {
    \relative { 
      \key g \major
      \partial 4
      {a'8 a b a a fs( a fs4) fs8 e d d( b) d4 }
      \addlyrics {
        Oh they built the ship titanic to sail the ocean blue
      }

      {d8 e fs a a b a4 a8 a b  e, e fs e4}
      \addlyrics {
        and they thought they had a ship that the sea would not get through
      }
  
      {a8 a b a a fs a4 fs8 fs e d d b( d4) }
      \addlyrics {
        but the good lord raised his hand, said the ship would not withstand
      }

      {d8 e fs( a) fs d e( g) e cs d4~ d2}
      \addlyrics {
        it was sad when the great ship went down.
      }
  
      {d'8 cs b4~ b2 d8 b a4~ a2}
      \addlyrics {
        it was sad it was sad
      }

      {fs8 g a4 a8 a a( d) b fs e4}
      \addlyrics {
        it was sad when the great ship went down
      }

      <<
        {a8 b a g fs e d8 d4 d8 fs4 fs8 fs g g g g gs4}
        \addlyrics {
          to the bottom _ of the husbands _ and wives little _ children _ lost their lives
        }
        \new Staff { 
          \clef bass \key g \major
          a,8 b a g fs e d2( fs g gs4)
        }
        \addlyrics {
          to the bottom _ of the sea __ 
        }
      >>
  
      {d'8 e fs( a) fs d e( g) e cs d2}
      \addlyrics {
        it was sad when the great ship went down.
      }
    }
  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}
