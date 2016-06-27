\version "2.18.2"
\language "english"

\header {
  title = "Bound Up"
  composer = "Kyle Lemle"
  tagline = ""
}

\paper { 
   indent = 0\cm} 


<<
  \new ChordNames {
    \transpose a a
    \chordmode {
      \bar ".|:"
      % verse
      \mark \markup {\bold {\box verse} }
        a1:m e:m f g2 e \break
        a1:m e:m f g2 a:m \break
      % pre-c
      \mark \markup {\bold {\box pre-c} }
      d1:m a:m e a2:m a:m/g \break
      e1 d:m g b2:7 e:7 \break
      % chorus
      \mark \markup {\bold {\box chorus} }
      \repeat volta 2 {
        a1:m a:m a:m/g a:m/g \break
        d:sus d/a fs:m e:sus \break
      }
      % bridge
      \mark \markup {\bold {\box bridge} }
      \repeat volta 2 {
        a1:m c2/g e:7 a1:m c2/g e:7
      }
    }
  }
 
   \new Voice \with {
    \consists "Pitch_squash_engraver"
  } {
    \relative c {
      \improvisationOn
      c4 c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c
      c c c c c c c c c c c c c c c c^\markup "til cue"
    }
  }
>>

% form
\markup { 
  \override #'(baseline-skip . 3) 
  \override #'(line-width . 5) 
  \justify { 
    verse
    pre-c
    chorus
    -   
    verse
    pre-c
    chorus
    bridge
    -
    verse
    pre-c
    chorus
    bridge
  }
} 