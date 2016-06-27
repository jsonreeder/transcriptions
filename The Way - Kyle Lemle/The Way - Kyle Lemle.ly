\version "2.18.2"
\language "english"

\header {
  title = "The Way"
  composer = "Kyle Lemle"
  tagline = ""
}

\paper { 
  indent = 0\cm} 

<<
  \new ChordNames {
    \transpose fs fs
    \chordmode {
      \bar ".|"
      \mark \markup {\bold {\box verse} }
         fs1:m7 b:9 fs:m7 b:9 \break
         a g:69 g:69 \break
         fs:m e d e \break
       \mark \markup {\bold {\box pre-chorus} }
       \bar ".|"
       d2 a e1 d2 a e1 \break
       fs1:m e d cs \break
       \mark \markup {\bold {\box chorus} }
       \repeat volta 2 {
       fs1:m7 fs:m7 g:69 g:69 \break
       d2 e cs:dim7 fs:m d e }
       \alternative { 
         { a1 c:m7 \break }
       }
       
       \mark \markup {\bold {\box bridge} }
       d1 e d e \break
       d a b:m cs:7 \break
       \mark \markup {\bold {\box outro} }
       \repeat volta 2 {
       fs1:m e b:m e2 cs:7 }
    }
  }
 
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \numericTimeSignature
      c4 c c c c c c c c c c c c c c c 
      c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
    }
  }
>>

