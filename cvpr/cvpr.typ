#let manuscript(title: [Paper Title], authors: (), anonymous: true, abstract: [], content) = [
    #let RULERWIDTH = 0.4in
    #set page(
        paper: "a4",
        margin: (
          left: 0.8125in - RULERWIDTH,
          right: 0.8125in - RULERWIDTH,
          top: 1.0625in,
          bottom: 1.0625in
        )
    )
    #let A4WIDTH = 8.5in
    #set par(
        justify: true,
        first-line-indent: 0.166666in,
        leading: 0.6em
    )

    #set text(
        font: "Times",
        size: 10pt,
        spacing: 100%
    )
    #show raw: set text(font: "CMU Typewriter Text")

    #set heading(numbering: "1.1.")
    #show heading: h => [
        #set text(size: 12pt)
        #h #v(6pt)
    ]

    #grid(columns: (RULERWIDTH, auto, RULERWIDTH),
      gutter: 0pt,
      [
        #if anonymous {
            set align(left)
            for i in range(100) {
            [#i #linebreak()]
            }
        }
      ],
      [
          #align(center)[
              #v(0.375in)
              #text(size: 14pt)[*#title*]
          ]\
          #align(center)[
              #set text(size: 11pt)
              #let c = ()
              #for value in range(authors.len()) {
                  c.push(1fr)
              }
              #grid(
                  columns: c,
                  ..authors
              )
          ]\ \
          #columns(2, gutter: 0.3125in, [
              #align(center)[
                  #text(size: 12pt)[*Abstract*]
              ]
              
              #emph[#abstract] \ \
              #content
          ])
      ],
      [
        #if anonymous {
            set align(right)
            for i in range(100) {
            [#i #linebreak()]
            }
        }
      ]
    )
]