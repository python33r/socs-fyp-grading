#import "/src/lib.typ": *

#assert-panic(() => report(
  report-type: "sup",
  student: "STUDENT NAME",
  project-title: [
    PROJECT TITLE
  ],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  implementation-grade: -1,
))

#assert-panic(() => report(
  report-type: "sup",
  student: "STUDENT NAME",
  project-title: [
    PROJECT TITLE
  ],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  implementation-grade: 21,
))

#assert-panic(() => report(
  report-type: "sup",
  student: "STUDENT NAME",
  project-title: [
    PROJECT TITLE
  ],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
  implementation-grade: "10",
))
