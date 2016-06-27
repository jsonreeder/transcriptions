\version "2.18.2"
\language "english"

\header {
  title = "Keep It Loose, Keep It Tight"
  composer = "Amos Lee"
  tagline = ""
}

\paper { 
  indent = 0\cm} 

<<
  \new ChordNames {
    \transpose a a
    \chordmode {
      \bar ".|"
      \mark \markup {\bold {\box intro}}
      a2 b a b a b \time 2/4 cs4:m b \time 4/4 a1 \break
      \mark \markup {\bold {\box verse} }
      a2 b a b a b cs4:m b a2 \break
      a2 b a b a b cs4:m b a2 \time 2/4 cs4:m b \time 4/4 a1 \break
      a2 b a b a b cs4:m b a2  \time 2/4 cs4:m b \time 4/4 a1 \break
      \mark \markup {\bold {\box chorus}}
      a2 b cs1:m a2 b cs1:m a2 b cs4:m b a2 \break
      a2 b e:7 a4 b e2:7 a \break
      \mark \markup {\bold {\box verse} }
      a2 b a b a b \break 
      cs4:m b a2 cs4:m b a2
      \time 2/4 cs4:m b \time 4/4 a1 \break

      \mark \markup {\bold {\box chorus}}
      a2 b cs1:m a2 b cs1:m \break a2 b cs4:m b a2 a2 b cs1:m11 \break
      a2 b e:7 a4 b e2:7 a4 b e2:7 a4 b a1     \bar "|."
    }
  }
 
  \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      \numericTimeSignature
      c4 c c c c c c c c c c c c c c1 
      c4 c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c1
      c4 c c c c c c c c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c 
      c4 c c c c c c1 c4 c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c1
    }
  }
>>

