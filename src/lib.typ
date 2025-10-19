// SoCS FYP Grading Report Template
// (Nick Efford, May 2025)

#let report(
  report-type: "sup",
  module-code: "COMP3931",
  student: "",
  project-title: [],
  supervisor: "",
  assessor: "",
  english-ok: true,
  comments: [],
  research-comments: [],
  methods-comments: [],
  implementation-comments: [],
  results-comments: [],
  presentation-comments: [],
  appraisal-comments: [],
  research-grade: 0,
  methods-grade: 0,
  implementation-grade: 0,
  results-grade: 0,
  presentation-grade: 0,
  appraisal-grade: 0,
) = {
  // Validation

  let report-options = ("sup", "asr", "jar")
  let module-options = ("COMP3931", "COMP3932")

  assert(
    report-type in report-options,
    message: "Report type must be one of " + report-options.join(", ")
  )

  assert(
    module-code in module-options,
    message: "Module code must be one of " + module-options.join(", ")
  )

  assert.ne(student, "", message: "Student name must be provided")
  assert.ne(supervisor, "", message: "Supervisor name must be provided")
  assert.ne(assessor, "", message: "Assessor name must be provided")

  context {
    // Make sure there is content for project title
    assert(
      measure(project-title).width > 0pt,
      message: "Project title must be provided"
    )
    if report-type == "jar" {
      // Make sure that there is content for all comments fields
      assert(
        measure(comments).width > 0pt,
        message: "Overall comments must be provided for joint report"
      )
      assert(
        measure(research-comments).width > 0pt,
        message: "Background Research comments must be provided for joint report"
      )
      assert(
        measure(methods-comments).width > 0pt,
        message: "Methods comments must be provided for joint report"
      )
      assert(
        measure(implementation-comments).width > 0pt,
        message: "Implementation & Validation comments must be provided for joint report"
      )
      assert(
        measure(results-comments).width > 0pt,
        message: "Results & Evaluation comments must be provided for joint report"
      )
      assert(
        measure(presentation-comments).width > 0pt,
        message: "Presentation comments must be provided for joint report"
      )
      assert(
        measure(appraisal-comments).width > 0pt,
        message: "Self-Appraisal comments must be provided for joint report"
      )
    }
  }

  assert(
    research-grade >= 0 and research-grade <= 20,
    message: "Grade for Background Research must be in range 0-20"
  )

  assert(
    methods-grade >= 0 and methods-grade <= 20,
    message: "Grade for Methods must be in range 0-20"
  )

  assert(
    implementation-grade >= 0 and implementation-grade <= 20,
    message: "Grade for Implementation & Validation must be in range 0-20"
  )

  assert(
    results-grade >= 0 and results-grade <= 20,
    message: "Grade for Results & Evaluation must be in range 0-20"
  )

  assert(
    presentation-grade >= 0 and presentation-grade <= 10,
    message: "Grade for Presentation must be in range 0-10"
  )

  assert(
    appraisal-grade >= 0 and appraisal-grade <= 10,
    message: "Grade for Self-Appraisal must be in range 0-10"
  )

  // Configuration

  let author = supervisor
  let title = "Final Report: Individual Grading by Supervisor"
  
  if report-type == "asr" {
    author = assessor
    title = "Final Report: Individual Grading by Assessor"
  }
  else if report-type == "jar" {
    title = "Project Assessment Form"
  }

  set document(
    author: author,
    title: title
  )

  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
    numbering: "1"
  )

  set text(
    font: ("Liberation Serif", "Libertinus Serif"),
    size: 10pt,
    region: "GB"
  )

  show raw: set text(font: ("Liberation Mono", "DejaVu Sans Mono"))

  //set par(justify: true)

  // Content

  align(center,
    text(18pt)[*School of Computer Science*]
  )

  align(center,
    text(14pt, strong(title))
  )

  v(1.5em)
  
  if report-type == "jar" [
    _TO BE COMPLETED JOINTLY BY THE SUPERVISOR AND ASSESSOR. THE
    SUPERVISOR SHOULD UPLOAD ON BEHALF OF BOTH. PLEASE ENSURE THAT
    THE FILENAME BEGINS WITH THE STUDENT'S FAMILY NAME AND INCLUDES
    THE TEXT 'jar' SOMEWHERE._
  ]
  else if report-type == "asr" [
    _TO BE COMPLETED BY THE PROJECT ASSESSOR PRIOR TO DISCUSSION WITH THE
    SUPERVISOR AND UPLOADED AS PER THE INSTRUCTIONS. PLEASE ENSURE THAT
    THE FILENAME BEGINS WITH THE STUDENT'S FAMILY NAME AND INCLUDES THE
    TEXT 'asr' SOMEWHERE._
  ]
  else [
    _TO BE COMPLETED BY THE PROJECT SUPERVISOR PRIOR TO DISCUSSION WITH
    THE ASSESSOR AND UPLOADED AS PER THE INSTRUCTIONS. PLEASE ENSURE THAT
    THE FILENAME BEGINS WITH THE STUDENT'S FAMILY NAME AND INCLUDES THE
    TEXT 'sup' SOMEWHERE._
  ]

  v(1.5em)

  table(
    columns: (8em, 1fr),
    row-gutter: 0.5em,
    stroke: none,
    [*Student:*], student,
    [*Title of Project:*], project-title,
    [*Module Code:*], module-code,
    [*Supervisor:*], supervisor,
    [*Assessor:*], assessor,
    v(1.5em),
    table.hline(),
  )

  v(1em)
  
  [*Report satisfies the English Competency requirements:*]
  h(0.5em)
  if english-ok [PASS] else [FAIL]

  v(1.5em)

  [
    _The report overleaf gives the gradings and justifications for each
    criterion, as well as the overall grade._
  ]

  v(1.5em)
  
  text(12pt)[*Overall Comments*]
  parbreak()
  text(comments)

  pagebreak()

  [*Student:*]
  h(0.5em)
  student

  v(1em)

  if report-type == "jar" [
    *Joint report*
  ]
  else [
    *Individual Report*
  ]
  h(0.5em)
  [
    (_Note_: this should be mainly evaluative---there is only a need
    to describe the content of the project report in the event of the
    student's abstract being inadequate.)
  ]

  v(1em)

  let grade = str(
    research-grade +
    methods-grade +
    implementation-grade +
    results-grade +
    presentation-grade +
    appraisal-grade
  )

  table(
    columns: (8em, 6em, 6em, 1fr),
    align: (left, center, center, left),
    table.header([], [*Maximum*], [*Grade*], [*Comments*]),
    [*Background Research*], [20], str(research-grade), research-comments,
    [*Methods*], [20], str(methods-grade), methods-comments,
    [*Implementation & Validation*], [20], str(implementation-grade), implementation-comments,
    [*Results & Evaluation*], [20], str(results-grade), results-comments,
    [*Presentation*], [10], str(presentation-grade), presentation-comments,
    [*Self-Appraisal*], [10], str(appraisal-grade), appraisal-comments,
    table.cell(align: horizon)[*TOTAL*], text(14pt)[100], text(14pt, grade),
  )

  v(1em)

  if report-type == "jar" [
    The supervisor confirms that the grading has been undertaken based on
    the professional judgement of standards of both the supervisor and
    the assessor.

    #v(1em)

    Name of supervisor: #h(0.5em) #supervisor

    Name of assessor: #h(0.5em) #assessor
  ]
  else if report-type == "asr" [
    I confirm that the grading has been undertaken based on my professional
    judgement of standards.

    #v(1em)

    Name of assessor: #h(0.5em) #assessor
  ]
  else [
    I confirm that the grading has been undertaken based on my professional
    judgement of standards.

    #v(1em)

    Name of supervisor: #h(0.5em) #supervisor
  ]
}
