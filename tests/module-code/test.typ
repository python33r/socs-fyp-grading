#import "/src/lib.typ": *

#assert-panic(() => report(
  report-type: "sup",
  module-code: "",
  student: "STUDENT NAME",
  project-title: [PROJECT TITLE],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
))

#assert-panic(() => report(
  report-type: "sup",
  module-code: "COMP3930",
  student: "STUDENT NAME",
  project-title: [PROJECT TITLE],
  supervisor: "SUPERVISOR NAME",
  assessor: "ASSESSOR NAME",
))
