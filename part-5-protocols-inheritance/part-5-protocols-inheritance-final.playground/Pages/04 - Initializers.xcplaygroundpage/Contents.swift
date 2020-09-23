//: [⇐ Previous: 03 - Challenge - Inheritance](@previous)
//: ## Episode 04: Initializers

class Person {
  var firstName: String
  var lastName: String
  
  required init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student: Person {
  var grades: [String] = []
  
  convenience init(transfer: Student) {
    self.init(firstName: transfer.firstName, lastName: transfer.lastName)
    grades = transfer.grades
  }
}

class StudentAthlete: Student {
  var sports: [String]
  
  required convenience init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, sports: [])
  }
  
  convenience init(transfer: StudentAthlete) {
    self.init(firstName: transfer.firstName, lastName: transfer.lastName, sports: transfer.sports)
    grades = transfer.grades
  }
  
  init(firstName: String, lastName: String, sports: [String]) {
    self.sports = sports
    super.init(firstName: firstName, lastName: lastName)
  }
}

let rudy = StudentAthlete(firstName: "Daniel", lastName: "Ruettiger", sports: ["Foosball"])
StudentAthlete(firstName: "Bernie", lastName: "Kosar")

StudentAthlete(transfer: rudy).sports




//: [⇒ Next: 05 - Challenge: Initializers](@next)
