\version "2.18.2"
\language "english"

\header {
  title = "Love's in Need of Love"
  composer = "Stevie Wonder"
  tagline = ""
}

\paper { 
  indent = 0\cm} 

<<
  \new ChordNames {
    \transpose c c
    \chordmode {
      \bar ".|"
      \mark \markup {\bold {\box intro} }
       \repeat volta 2 {
         c g:m7 as2:dim7 d:m f:m }
        c1 g \break      
      \mark \markup {\bold {\box verse} }
       \repeat volta 2 {
         c1 as:dim7 d:m g:7 
         d1:m g:7 f2:maj7 e:m7 d:m7 g:7 \break }
       \mark \markup {\bold {\box chorus} }
       \repeat volta 2 {
         c1 a:m e:m e:m 
         d1:m7 d:m7 a:m g:7 \break }
      
    }
  }
 
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \numericTimeSignature
      c4 c c c c c c c c c c c c c c 
      c4 c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c c c c c c
    }
  }
>>

