\version "2.18.2"

% This is my first score

 \language "english"

\header {
  title = "Siglo Reel"
}

music = \relative c' {
  \key bf \minor
  \tempo 4 = 180
  f'8-^ bf, bf af bf c df f-^ |
  r8 bf, bf af bf c df bf |
  c df c bf af f' f af, |
  c df c bf af f' f ef | \break
  f16 f f r bf,8 af bf c df f16 f |
  f8 bf, bf af bf c df bf |
  c df c16 df c bf af8 f' f af, |
  c df c bf af r f' ef | \break
  ef f bf, af bf c df f-^ |
  r8 bf, bf af bf c df bf |
  c df c bf ef df c f | 
  ef df af' bf r8 f f ef | \break
  ef f bf, af bf c df f-^ |
  r8 bf, bf af bf c df bf |
  c df c bf af f' f af, |
  c df c bf af f r4 | \break
  
}

\score {
   % 
  \music
  \layout {}
  \midi {}
}