# socs-fyp-grading

A [Typst][typ] template for grading final-year projects in the [School of
Computer Science][socs] at the University of Leeds.

This template can be used to generate not only the individual reports for
supervisor & assessor, but also the final joint assessment report.

Documents using the template should have this format:

```typst
#import "socs-fyp-grading.typ": *

#show: report.with(
  // set parameters in here
)
```

An example document with guiding comments is provided in `starter.typ`.
Use this as a starting point for writing actual reports.

## Notes

The template defaults to a supervisor report, but this can be overridden by
passing `report-type: "asr"` (assessor report) or `report-type: "jar"` (joint
assessment report) to the `with()` method. Valid values for `report-type`
are `"sup"`, `"asr"`, `"jar"`.

The default module code is COMP3931, but you can override this for the
Synoptic Project module by passing `module-code: "COMP3932"` to the
`with()` method. Valid values for `module-code` are `"COMP3931"` and
`"COMP3932"`.

The template defaults to giving a Pass for English Competency requirements.
If you need to fail a project on this, pass `english-ok: false` to the
`with()` method.

You will always need to provide student name, supervisor name and assessor
name as strings, via the parameters `student`, `supervisor` and `assessor`.

Project title should always be set, using the parameter `project-title`.
You can provide a value for this as a string in double quote, or as a content
block enclosed in square brackets; the latter may be more convenient for
longer titles, as it allows you to split a long title across multiple lines.

Overall comments and category comments can be supplied to a report via these
parameters:

    comments
    research-comments
    methods-comments
    implementation-comments
    results-comments
    presentation-comments
    appraisal-comments

As with the project title, the text that you supply for each of these can
be either a string or a content block, although the latter is almost always
what you should be using. Within a content block, you can use blank lines
to break up your comment into multiple paragraphs if required.

Note that comments are allowed to be empty for individual reports, but
**the template requires that content is provided for each of these fields in
the joint report**.

Grades are supplied via these parameters:

    research-grade
    methods-grade
    implementation-grade
    results-grade
    presentation-grade
    appraisal-grade

These default to 0, so you will need to provide actual values in a report.
Those values should be integers and they will be checked to make sure that
they are in allowed range of each category. The total of all the grades will
be computed and included in the report.

[typ]: https://github.com/typst/typst
[socs]: https://eps.leeds.ac.uk/computing/
