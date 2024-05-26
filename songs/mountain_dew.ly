\language "english"
\version "2.24.3"

\score {
  \relative {
    \sectionLabel "Verse"
    \key c \major
    {
      g'8 g4 a8 c4 d8 c e8 e4 d8 c4
      c8 c a c4 c8 d c4 a8 g4~ g2
      a8 a g g a a c4 d8 c e e e d c4
      d8 c e g4 g8 e c d b c4.~ c2
    }
    \addlyrics {
      My unc -- le bill had a still on the hill
      where he'd fill up a jug -- full or two
      well the buzz -- ards in the sky get so cra -- zy they can't fly
      just from smell -- ing that good ole mount -- ain dew
    }
    \section
    \sectionLabel "Chorus"
    {
      a8 g g4 g8 a8 c d c e4 d c
      c4 a8 c4 c8 d c4 a8 g4.~ g2
      a8 g g4 a8 c4 d8 c e e4 d8 c4
      d8 c e g4. e4 e c2
      
    }
    \addlyrics {
      They call it that goold ole mount -- ain dew dew dew
      and them that re -- fuse it are few.
      I'll hush up my mug if you fill up my jug
      with that good ole mount -- ain dew
    }
  }
  \layout {}
  \midi {
    \tempo 4=140
  }
}
