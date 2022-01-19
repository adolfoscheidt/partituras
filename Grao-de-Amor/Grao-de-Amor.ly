\version "2.22.1"
\language "english"

\header {
  title = "Grão de Amor"
  composer = "Arnaldo Antunes"
  tagline = \markup {
    Transcrição feita por Adolfo Scheidt. Acesse online em: \with-url #"https://github.com/adolfoscheidt/partituras.git"
    https://github.com/adolfoscheidt/partituras.git
  }
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key a \major
  \numericTimeSignature
  \time 3/4
  \tempo 4 = 104
}

melodia = {
  r2 \tuplet 3/2 {r4 cs8} |
  \repeat volta 2 {
    \tuplet 3/2 {cs4 d8} a4 \tuplet 3/2 {r4 a8} |
    \tuplet 3/2 {gs4 fs8} b4 \tuplet 3/2 {r4 b8} |
    \tuplet 3/2 {b4 cs8} e,4 ( \tuplet 3/2 {e4) gs8} |
    \tuplet 3/2 {fs4 e8} a4 \tuplet 3/2 {r4 cs8} |
  }
  \tuplet 3/2 {cs4 b8} \tuplet 3/2 {a'4 fs8} \tuplet 3/2 {d4 e8} |
  cs4 b4 \tuplet 3/2 {r4 d8} |



  \tuplet 3/2 {d4 cs8} \tuplet 3/2 {gs'4 e8} \tuplet 3/2 {cs4 b8} |
  as4 r4 \tuplet 3/2 {r4 cs8} |
  \tuplet 3/2 {cs4 d8} fs,4 \tuplet 3/2 {r4 a8} |
  \tuplet 3/2 {gs4 b8} \tuplet 3/2 {e4 cs8} \tuplet 3/2 {b4 cs8} |
  a4  r2  |

   r2 \tuplet 3/2 {r4 cs8} |
  \repeat volta 2 {
    \tuplet 3/2 {cs4 d8} a4 \tuplet 3/2 {r4 a8} |
    \tuplet 3/2 {gs4 fs8} b4 \tuplet 3/2 {r4 b8} |
    \tuplet 3/2 {b4 cs8} e,4 ( \tuplet 3/2 {e4) gs8} |
    \tuplet 3/2 {fs4 e8} a4 \tuplet 3/2 {r4 cs8} |
    \inStaffSegno
  }
  \tuplet 3/2 {cs4 b8} \tuplet 3/2 {a'4 fs8} \tuplet 3/2 {d4 e8} |
  cs4 b4 \tuplet 3/2 {r4 d8} |

  \tuplet 3/2 {d4 cs8} \tuplet 3/2 {gs'4 e8} \tuplet 3/2 {cs4 b8} |
  as4 r4 \tuplet 3/2 {r4 cs8} |
  \tuplet 3/2 {cs4 d8} fs,4 \tuplet 3/2 {r4 a8} |
  \tuplet 3/2 {gs4 b8} \tuplet 3/2 {e4 cs8} \tuplet 3/2 {b4 cs8} |
  a4  r2^\markup {\halign #-3 \bold{\italic{fine}}}  \bar "|." |

  a4 b4 cs4 |
  \tuplet 3/2 {b4 cs8} d2 |
  r4 gs,8 a8 ( \tuplet 3/2 {a4 ) b8} |
  \tuplet 3/2 {a4 b8} cs2 |
  r4 a8 b8(  \tuplet 3/2 {b4 ) cs8} |
  \tuplet 3/2 {b4 cs8} d2 |
  r4 gs,8 a8 ( \tuplet 3/2 {a4 ) b8} | 
  cs2.
  r2 \tuplet 3/2 {r4 cs8}^\markup {\larger {D.S. al fine}}  \bar "|." |
}

harmonia = \chordmode {
  a2. |
  b:m |
  e |
  a |
  fs:m |
  b:m |
  e |
  cs:m |
  fs |
  b:m |
  e |
  a |
  a |
  b:m |
  e |
  a |
  fs:m |
  b:m |
  e |
  cs:m |
  fs |
  b:m |
  e |
  a |
  a |
  b:m |
  e |
  a |
  fs:m |
  b:m |
  e |
  a |
  a:7 |
  
  
}

right = {
  \global
  \relative c''{\melodia}
}
 

\score {
  <<
    \new ChordNames {
    \set chordChanges = ##t
    \harmonia
  }
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } \right
  >>
  \layout { indent = 0.0 }
  \midi { }
}
