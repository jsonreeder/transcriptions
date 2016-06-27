\version "2.18.2"
\language "english"
\header {
  title = "Night Train"
  composer = "Amos Lee"
  tagline = ""
  
}
\paper { indent = 0\cm} 

myChords = \chordmode { g1 g c c d d2 c2 g1 g}

notes = \relative g {
  \bar ".|"
  \key g \major
  \tempo 4 = 130
  \numericTimeSignature
  \mark \markup {\bold {\box A}}
  g,4 <<d' b'>> g,8 g' d g' | g,, g' d b' g, g' b, b' |
  c,4 <<e e'>> c,8 g' e d' | c, g' c, c' c, g' e b' | \break
  d,4 <<a'8 e'>> fs8 d, d' a g' | d, d' a d c, g' e d' |
  g,,4 <<d' e'>> g,,8 g' d g' | g,, g' d b' b, g' d b' |
  \bar "|."
}

\score {
  \layout {}
  \midi {}  
  <<
  \new ChordNames { \myChords }
  \new Staff  { \clef "treble_8" \notes }
  \new TabStaff {  \notes }
  >>
}