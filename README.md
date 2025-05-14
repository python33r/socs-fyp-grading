# socs-fyp-grading

A [Typst][typ] template for grading final-year projects in the [School of
Computer Science][socs] at the University of Leeds.

This template can be used to generate the individual reports for supervisor
& assessor, and the final joint assessment report.

A valid but empty document that uses the template is provided in `empty.typ`.
You can run this through Typst to see the effect of the default parameter
settings.

A fleshed-out example document with guiding comments is provided in
`starter.typ`. Use this as a starting point for writing actual reports.

## Notes

The template defaults to a supervisor report, but this can be overridden by
passing `report_type: "asr"` (assessor report) or `report_type: "jar"` (joint
assessment report) to the `with()` method. Valid values for `report_type`
are `"sup"`, `"asr"`, `"jar"`.

The default module code is COMP3931, but you can override this for the
Synoptic Project module by passing `module_code: "COMP3932"` to the
`with()` method. Valid values for `module_code` are `"COMP3931"` and
`"COMP3932"`.

The template defaults to giving a Pass for English Competency requirements.
If you need to fail a project on this, pass `english_ok: false` to the
`with()` method.

You will always need to provide student name, supervisor name and assessor
name, via the parameters `student`, `supervisor` and `assessor`.

Project title should be set using the parameter `project_title`. You can
put this in double quotes or square brackets; the latter may be more
convenient for longer titles, as it allows you to split a long title across
multiple lines.

Overall comments and category comments are supplied to a report via these
parameters:

    comments
    research_comments
    methods_comments
    implementation_comments
    results_comments
    presentation_comments
    appraisal_comments

The text that you supply for each of these should be enclosed in square
brackets. You can use blank lines to break up comments into multiple
paragraphs if required.

Grades are supplied via these parameters:

    research_grade
    methods_grade
    implementation_grade
    results_grade
    presentation_grade
    appraisal_grade

Values should be integers and will be checked to make sure that they are in
range. The total will be computed and included in the report.

[typ]: https://github.com/typst/typst
[socs]: https://eps.leeds.ac.uk/computing/
