#import "@local/socs-fyp-grading:0.3.1": *

#report(
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
    /*
       Put overall feedback on the project here

       You can write multiple paragraphs here and in the other
       comments fields (use a blank line to separate them)

       Comments fields can be left blank in supervisor or assessor reports,
       but they must all contain text in a joint report
    */
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
