#import "/src/lib.typ": *

#assert-panic(() => report(
  report-type: "",
  module-code: "COMP3931",
  student: "STUDENT NAME",
  project-title: [PROJECT TITLE],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
))

#assert-panic(() => report(
  report-type: "spr",
  module-code: "COMP3931",
  student: "STUDENT NAME",
  project-title: [PROJECT TITLE],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
))
