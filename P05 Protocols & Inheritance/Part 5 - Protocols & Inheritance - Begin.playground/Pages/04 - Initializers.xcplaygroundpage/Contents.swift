//: [⇐ Previous: 03 - Challenge - Inheritance](@previous)
//: ## Episode 04: Initializers

class Person {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student: Person {
  var grades: [String] = []
}

class StudentAthlete: Student {
  
}

StudentAthlete(firstName: "Daniel", lastName: "Ruettiger")





//: [⇒ Next: 05 - Challenge: Initializers](@next)
