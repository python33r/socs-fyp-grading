#import "socs-fyp-grading.typ": *

#show: report.with(
  // Specify report_type as "sup", "asr" or "har"
  report_type: "sup",
  student: "STUDENT NAME",
  project_title: [
    // Put project title here
  ],
  // Uncomment line below for Synoptic Project
  //module_code: "COMP3932",
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  // Uncomment line below for projects that fail on English Competency
  //english_ok: false,
  comments: [
    // Put overall feedback on the project here

    // You can write multiple paragraphs here and in the other
    // comments fields - use a blank line to separate them
  ],
  research_comments: [
    // Put comments on Background Research here
  ],
  methods_comments: [
    // Put comments on Methods here
  ],
  implementation_comments: [
    // Put comments on Implementation & Validation here
  ],
  results_comments: [
    // Put comments on Results & Evaluation here
  ],
  presentation_comments: [
    // Put comments on Presentation here
  ],
  appraisal_comments: [
    // Put comments on Self-Appraisal here
  ],
  // Specify your grade for each category below
  // (The total will be computed for you)
  research_grade:       0,
  methods_grade:        0,
  implementation_grade: 0,
  results_grade:        0,
  presentation_grade:   0,
  appraisal_grade:      0
)

You can include your own private notes from this point onwards;
they won't be visible in the PDF output.
