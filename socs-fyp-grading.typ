// SoCS FYP Grading Report Template
// (Nick Efford, May 2025)

#let report(doc,
  report_type: "sup",
  module_code: "COMP3931",
  student: "STUDENT NAME",
  project_title: "PROJECT TITLE",
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  english_ok: true,
  comments: [_Overall feedback for project_],
  research_comments: [_Comments on background research_],
  methods_comments: [_Comments on methods_],
  implementation_comments: [_Comments on implementation & validation_],
  results_comments: [_Comments on results & evaluation_],
  presentation_comments: [_Comments on presentation_],
  appraisal_comments: [_Comments on self-appraisal_],
  research_grade: 0,
  methods_grade: 0,
  implementation_grade: 0,
  results_grade: 0,
  presentation_grade: 0,
  appraisal_grade: 0,
) = {
  // Validation

  let module_options = ("COMP3931", "COMP3932")
  let report_options = ("sup", "asr", "jar")

  assert(
    module_code in module_options,
    message: "Module code must be one of " + module_options.join(", ")
  )

  assert(
    report_type in report_options,
    message: "Report type must be one of " + report_options.join(", ")
  )

  assert(
    research_grade >= 0 and research_grade <= 20,
    message: "Grade for Background Research must be in range 0-20"
  )

  assert(
    methods_grade >= 0 and methods_grade <= 20,
    message: "Grade for Methods must be in range 0-20"
  )

  assert(
    implementation_grade >= 0 and implementation_grade <= 20,
    message: "Grade for Implementation & Validation must be in range 0-20"
  )

  assert(
    results_grade >= 0 and results_grade <= 20,
    message: "Grade for Results & Evaluation must be in range 0-20"
  )

  assert(
    presentation_grade >= 0 and presentation_grade <= 10,
    message: "Grade for Presentation must be in range 0-10"
  )

  assert(
    appraisal_grade >= 0 and appraisal_grade <= 10,
    message: "Grade for Self-Appraisal must be in range 0-10"
  )

  // Configuration

  let author = supervisor
  let title = "Final Report: Individual Grading by Supervisor"
  
  if report_type == "asr" {
    author = assessor
    title = "Final Report: Individual Grading by Assessor"
  }
  else if report_type == "jar" {
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
  
  if report_type == "jar" [
    _TO BE COMPLETED JOINTLY BY THE SUPERVISOR AND ASSESSOR. THE
    SUPERVISOR SHOULD UPLOAD ON BEHALF OF BOTH. PLEASE ENSURE THAT
    THE FILENAME BEGINS WITH THE STUDENT'S FAMILY NAME AND INCLUDES
    THE TEXT 'jar' SOMEWHERE._
  ]
  else if report_type == "asr" [
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
    [*Title of Project:*], project_title,
    [*Module Code:*], module_code,
    [*Supervisor:*], supervisor,
    [*Assessor:*], assessor,
    v(1.5em),
    table.hline(),
  )

  v(1em)
  
  [*Report satisfies the English Competency requirements:*]
  h(0.5em)
  if english_ok [PASS] else [FAIL]

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

  if report_type == "jar" [
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
    research_grade +
    methods_grade +
    implementation_grade +
    research_grade +
    presentation_grade +
    appraisal_grade
  )

  table(
    columns: (8em, 6em, 6em, 1fr),
    align: (left, center, center, left),
    table.header([], [*Maximum*], [*Grade*], [*Comments*]),
    [*Background Research*], [20], str(research_grade), research_comments,
    [*Methods*], [20], str(methods_grade), methods_comments,
    [*Implementation & Validation*], [20], str(implementation_grade), implementation_comments,
    [*Results & Evaluation*], [20], str(results_grade), results_comments,
    [*Presentation*], [10], str(presentation_grade), presentation_comments,
    [*Self-Appraisal*], [10], str(appraisal_grade), appraisal_comments,
    text(12pt)[*TOTAL*], text(12pt)[100], text(12pt, grade),
  )

  v(1em)

  if report_type == "jar" [
    The supervisor confirms that the grading has been undertaken based on
    the professional judgement of standards of both the supervisor and
    the assessor.

    #v(1em)

    Name of supervisor: #h(0.5em) #supervisor

    Name of assessor: #h(0.5em) #assessor
  ]
  else if report_type == "asr" [
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
