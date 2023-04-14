#let abstract_fn(doc) = [
    #if type(doc) == "content" {
        // only content blocks allowed as abstract
        align(center)[
            #box(width: 4.5in)[
                #align(center)[
                    #text(size: 12pt)[*Abstract*]
                ]
                #align(left)[
                    #doc
                ]
            ]
        ]
    } else {
        panic("Abstract requires a content block")
    }
]

#let manuscript(title: [Paper Title], authors: (), abstract: [], content) = [
    #set page(
        paper: "us-letter",
        margin: (x: 1.5in, y: 1in)
    )

    #set par(
        justify: true,
        leading: 0.45em
    )

    #set text(
        font: "Times",
        size: 10pt,
        weight: "medium",
        spacing: 65%
    )

    #show link: l => [
        #set text(font: "CMU Typewriter Text", size: 10pt)
        #box(stroke: 1pt + rgb(0, 255, 255))[#l]
    ]

    #show raw: set text(font: "CMU Typewriter Text", size: 10pt)

    #set heading(numbering: "1.1    ")
    #show heading: h => [
        #h #v(7pt)
    ]
    #show heading.where(level: 1): set text(size: 12pt)
    #show heading.where(level: 2): set text(size: 10pt)
    #show heading.where(level: 3): set text(size: 10pt)

    #align(center)[
        #line(length: 100%, stroke: 4pt)
        #v(0.125in)
        #text(size: 17pt)[*#title*]\
        #v(0.125in)
        #line(length: 100%)
    ]
    #v(20pt)
    #align(center)[
        #let c = ()
        #for i in range(authors.len()) {
            c.push(1fr)
        }
        #grid(
            columns: c,
            ..authors
        )
    ]
    #v(20pt)
    #abstract_fn(abstract)
    \

    // ...
    #content
]