\version "2.18.2"

\language "english"

\header {
  title = "Whisky Before Breakfast"
  composer = "Orrin Star"
  tagline = ""
}

music = \relative c' {
  \key c \major
  \tempo 4 = 190
  \numericTimeSignature
  \partial 4 g,8 a |
  \mark \markup {\bold {\circle A}}
  c8 d e f g2 | g8 a g f e c d e | f4 <a c> e <g c> | c,8 \glissando d\5 d\4 e d c a b | \break
  c8 d e f g2 | g8 a g f e c d e | f4 a8 f e4 g8 e | d c a b c2 \break
  \mark \markup {\bold {\circle A}}
  c8 d e f g4 c,8 e | g a g f e c d e | f8 <a c> f4 e8 <g b> e4 | c8 \glissando d\5 d\4 e d c a b | \break
  c8 d e f g2 | g8 a g f e c d e | f a f4 e8 g e4 | d8 c a b c2 \break
  \mark \markup {\bold {\circle B}}
  g'8 c~ c g c~c r b | c d e d c b a g | c \glissando d d, a' d4 d8 e | f e d c b g a b | \break
  c g c4 a16 \glissando b d8 <b d>4 | a8 f <a c>4 g8 e <g c>4 | f8  a <f a>4 e8 g <e g>4 | d8 c a b c2 | \break
  \mark \markup {\bold {\circle B}}
  c8~ <c d>~ <c e>~ <c e g>~ <c e g c>4 r8 b' | c d e d c b a g |
  c \glissando d~ <d, d'>~ <d a'>~ <d a' d>4 d'8 e | f e d c b g a b | \break
  c d e c b c d b | a b c a g e d e | f g a f g f e g f e d b c2 \fermata 
}

\score {
  % 
  % \music
  \layout {}
  \midi {}
  \new StaffGroup  <<
    \new Staff  { \clef "treble_8" << \music >> }
    \new TabStaff \with { stringTunings = #guitar-tuning } \music
  >>
}