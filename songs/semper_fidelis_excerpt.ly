\language "english"
\version "2.24.3"

\score {
  \relative {
  <<
    \new Staff {
      \key f \major
      \time 6/8
      {
        R2.*4
        a'2.~ a8 f a c4 a8 c2. a f~ f8 c f a4 f8 c2.~ c4.
        c'4. a2.~ a8 f a c4 a8 c2. a2. c,2.~ c8 f a c4 c,8 f2.~ f4.
      }
    }
    \drums \with { instrumentName = "Bass Drum" } {
      \clef percussion
      \repeat unfold 5 {bd 2. 2. 4. 4. 4. r4.}
    }
  >>
  }
  \layout {}
  \midi {
    \tempo 2 = 80
  }
}
\markup \wordwrap {
  The marching band plays this song on the way to the flag.
  It's just one short section of Semper Fidelis (John Philip Sousa)
  repeated until all of the scouts are lined up.
}

