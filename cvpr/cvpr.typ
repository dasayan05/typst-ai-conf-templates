#let manuscript(title: [Paper Title], authors: (), abstract: [], content) = [
    #set page(
        paper: "a4",
        margin: (x: 0.8125in, y: 1.0625in)
    )
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

    #align(center)[
        #v(0.375in)
        #text(size: 14pt)[*#title*]
    ]\
    #align(center)[
        #set text(size: 11pt)
        #grid(
            columns: (1fr, 1fr),
            authors.at(0),
            authors.at(1)
        )
    ]\ \
    #columns(2, gutter: 0.3125in, [
        #align(center)[
            #text(size: 12pt)[*Abstract*]
        ]
        
        #emph[#abstract] \ \
        #content
    ])
]