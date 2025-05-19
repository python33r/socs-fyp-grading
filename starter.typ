#import "socs-fyp-grading.typ": *

#show: report.with(
  // Specify report-type as "sup", "asr" or "jar"
  report-type: "sup",
  student: "STUDENT NAME",
  project-title: [
    PROJECT TITLE
  ],
  // Uncomment line below for Synoptic Project
  //module-code: "COMP3932",
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  // Uncomment line below for projects that fail on English Competency
  //english-ok: false,
  comments: [
    // Put overall feedback on the project here

    // You can write multiple paragraphs here and in the other
    // comments fields - use a blank line to separate them
  ],
  research-comments: [
    // Put comments on Background Research here
  ],
  methods-comments: [
    // Put comments on Methods here
  ],
  implementation-comments: [
    // Put comments on Implementation & Validation here
  ],
  results-comments: [
    // Put comments on Results & Evaluation here
  ],
  presentation-comments: [
    // Put comments on Presentation here
  ],
  appraisal-comments: [
    // Put comments on Self-Appraisal here
  ],
  // Specify your grade for each category below
  // (The total will be computed for you)
  research-grade:       0,
  methods-grade:        0,
  implementation-grade: 0,
  results-grade:        0,
  presentation-grade:   0,
  appraisal-grade:      0
)

You can include your own private notes from this point onwards.

This material will not be visible in the PDF output, but it will be
parsed by the Typst compiler, so must conform to Typst syntax.
