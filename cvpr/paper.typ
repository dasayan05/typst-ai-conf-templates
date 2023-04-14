#import "cvpr.typ": manuscript
#show: manuscript.with(
    title: [Typst Author Guidelines for CVPR Proceedings],
    authors: (
        [
            First Author\
            Institution1\
            Institution1 address\
            `firstauthor@i1.org`
        ],
        [
            Second Author\
            Institution2\
            First line of institution2 address\
            `secondauthor@i2.org`
        ],
        [
            Third Author\
            Institution3\
            Institution3 address\
            `thirdauthor@i3.org`
        ]
    ),
    abstract: [
        The ABSTRACT is to be in fully justified italicized text, at the top of the left-hand column, below the author and affiliation information. Use the word "Abstract" as the title, in 12-point Times, boldface type, centered relative to the column, initially capitalized. The abstract is to be in 10-point, single-spaced type. Leave two blank lines after the Abstract, then begin the main text. Look at previous CVPR abstracts to get a feel for style and length.
    ]
)

= Introduction

Please follow the steps outlined below when submitting your manuscript to the IEEE Computer Society Press. This style guide now has several important modifications (for example, you are no longer warned against the use of sticky tape to attach your artwork to the paper), so all authors should read this new version.

== Language

All manuscripts must be in English.

== Dual submission

Please refer to the author guidelines on the CVPR 2022 web page for a discussion of the policy on dual submissions.

== Paper length

Papers, excluding the references section, must be no longer than eight pages in length. The references section will not be included in the page count, and there is no limit on the length of the references section. For example, a paper of eight pages with two pages of references would have a total length of 10 pages. *There will be no extra page charges for CVPR 2022.*

Overlength papers will simply not be reviewed.
This includes papers where the margins and formatting are deemed to have been significantly altered from those laid down by this style guide.
Note that this *LaTeX* guide already sets figure captions and references in a smaller font.
The reason such papers will not be reviewed is that there is no provision for supervised revisions of manuscripts.
The reviewing process cannot determine the suitability of the paper for presentation in eight pages if it is reviewed in eleven.

== The ruler

The *LaTeX* style defines a printed ruler which should be present in the version submitted for review.
The ruler is provided in order that reviewers may comment on particular lines in the paper without circumlocution.
If you are preparing a document using a non-*LaTeX* document preparation system, please arrange for an equivalent ruler to appear on the final output pages.
The presence or absence of the ruler should not change the appearance of any other content on the page.
The camera-ready copy should not contain a ruler.
(*LaTeX* users may use options of cvpr.sty to switch between different versions.)

Reviewers:
note that the ruler measurements do not align well with lines in the paper --- this turns out to be very difficult to do well when the paper contains many figures and equations, and, when done, looks ugly.
Just use fractional references (_e.g._, this line is $087.5$), although in most cases one would expect that the approximate location will be adequate.


== Paper ID

Make sure that the Paper ID from the submission system is visible in the version submitted for review (replacing the "\*\*\*\*\*" you see in this document).
If you are using the LaTeX template, *make sure to update paper ID in the appropriate place in the tex file*.


== Mathematics

Please number all of your sections and displayed equations as in these examples:

$ E = m dot c^2 $ <important>

and

$ v = a dot t. $

It is important for readers to be able to refer to any particular equation. Just because you did not refer to it in the text does not mean some future reader might not need to refer to it. It is cumbersome to have to use circumlocutions like ``the equation second from the top of page 3 column 1''.
(Note that the ruler will not be present in the final copy, so is not an alternative to equation numbers).
All authors will benefit from reading Mermin's description of how to write mathematics:
#link("http://www.pamitc.org/documents/mermin.pdf").