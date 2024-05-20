\language "english"
\version "2.24.3"

\score {
  \relative {
    \sectionLabel "Verse"
    \key g \major
    \time 6/8
    \partial 8
    {
      d'8 g4 g8 g4 g8 g4 g8 g4 g8 a4 a8 e4 e8 a2 r8
      a8 fs4 fs8 fs4 fs8 fs4 fs8 fs4 fs8 d4 d8 e4 b8 d2 r8
      d8 g4. g4 g8 g4 g4. g8 a4 a8 e4 e8 a2 r8
      a8 fs4 fs8 fs4 fs8 fs4 fs8 fs4 e8 d4 d8 e4 fs8 g2 r8
    }
    \addlyrics {
      Oh in the town of Pal -- o -- mar there lived a mean old man.
      his name was Mis -- ter Dun -- der -- beck and he was true -- ly grand.
      One day he in -- ven -- ted the saus -- age meat mach -- ine.
      Now all the rats and cats and dogs will nev -- er more be seen.
    }
    \section
    \sectionLabel "Chorus"
    {
      d8 g4 g8 g4 g8 g4 g8 g4 g8 a4 a8 e4 e8 a2 r8
      a8 fs4 fs8 fs4 fs8 fs4 fs4. fs8 d4 d8 e4 b8 d2 r8
      d8 g4 g8 g4 g8 g4 g8 g4 g8 a4 a8 e4 e8 a2 r8
      a8 fs4 fs8 fs4 fs8 fs4 fs8 fs4 e8 d4 d8 e4 fs8 g2 r8
    }
    \addlyrics {
      Oh Dun -- der -- beck oh Dun -- der -- beck how could you be so mean?
      To ev -- er have in -- ven -- ted the saus -- age meat mach -- ine.
      Now all the rats and cats and dogs will nev -- er more be seen,
      they've all been ground to saus -- age meat in Dun -- der -- beck's mach -- ine.
    }
  }
  \layout {}
  \midi {
    \tempo 4=160
  }
}
