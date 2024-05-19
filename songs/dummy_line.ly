\language "english"
\version "2.24.3"

\score {
  \relative {
    \key g \major
    \time 2/4
    \partial 4
    {
      b8 b e e4 g4. g8 g fs fs4 b,2
      e8 e e e g g g g fs fs4 b,2
      e8 e4 g4. g4 a8 a4 bf2
      bf8 b4 b b e,8 e g fs4 e2
    }
    \addlyrics {
      On the dum -- my line, on the dum -- my line
      rid -- en rid -- en rid -- en on the dum -- my line.
      Rain or shine, I'll pay my dime
      and ride ride ride on the dum -- my line.
    }
  }
  \layout {}
  \midi {
    \tempo 4=120
  }
}
