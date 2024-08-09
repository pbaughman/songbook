\language "english"
\version "2.24.3"

global = {
  \key f \major
  \time 6/8
}

\parallelMusic horns,percussion {
  % Bass Drum Intro
  R2.*7 r4. r4 a''8 |
  \drummode {bd2. 2. 4. 4. 4. r4. 2. 2. 4. 4. 4. r4. } |

  % Initial Fanfare
  \sectionLabel "Fanfare"
  \repeat volta 2 {
    c2. a4. r4 a8 c2. a4. r4 a8 c4 c8 a4 a8 f4 f8 a4 c,8 f2. |
    \drummode {r2. r4. bd4. r2. r4. bd4. r2. r2. r4. 4.} |
    \alternative {
      \volta 1 {
        r4. r4 a8 |
        \drummode {bd4. r4.} |
      }
      \volta 2 {
        r4. c,4 c8 |
        \drummode {bd4. r4.} |
      }
    }
  }

  % Semper Fidelis
  \sectionLabel "March"
  \repeat volta 2 {
    a'2.~ a8 f a c4 a8 c2. a f~ f8 c f a4 f8 c2.~ c4. c'4. |
    \drummode {bd4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. } |

    a2.~ a8 f a c4 a8 c2. a2. c,2.~ c8 f a c4 c,8 f2.~ f4. c4-. c8-. |
    \drummode {bd4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. 4. r4.} |

    % The staccato part

    a'4.-. r r8 f-. a-. c4-. a8-. c4.-. r a-. r f-. r r8 c-. f-. a4-. f8-. c4.-. r r c'4.-. |
    \drummode {r4. bd4. 4. r4. r4. 4. r4. 4. r4. 4. 4. r4. r4. 4. 4. r4. } |

    a4.-. r r8 f-. a-. c4-. a8-. c4.-. r a-.r  c,-. r  r8 f-. a-. c4-. c,8-. f2.-.|
    \drummode {r4. bd4. 4. r4. r4. 4. r4. 4. r4. 4. 4. r4. r4. 4. } |

    \alternative {
      \volta 1 {
         r4. c4 c8 |
         \drummode { 4. r4. } |
      }
      \volta 2 {
         r2. |
         \drummode { 4. r4. } |
      }
    }
  }

  % Bass Drum Outro
  R2.*8 |
  \drummode {bd2. 2. 4. 4. 4. r4. 2. 2. 4. 4. 4. r4. } |
}

% I'm not sure why, but I originally had this in the key of f.  It needs to be in c
% for the bugler to play it, though - so we'll transpose it below.
combined_staffs = \transpose f c {
  \new StaffGroup <<
    \new Staff \with {instrumentName = "Horns"} { \global \relative \horns \fine }
    \new DrumStaff \with {instrumentName = "Bass Drum" } {  \percussion \fine }
  >>
}

\score {
  \combined_staffs
  \layout {}
}
\score {
  \unfoldRepeats {
    \combined_staffs
  }
  \midi { \tempo 2 = 80 }
}

\markup \wordwrap {
  The marching band plays this song on the way to the flag.
  The section labeled "March" is pretty close to one short section of Semper
  Fidelis (John Philip Sousa) and gets repeated until all of the scouts are
  lined up at the flag.
}

