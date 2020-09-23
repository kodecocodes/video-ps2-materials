//: [⇐ Previous: 01 - Introduction](@previous)
//: ## Episode 02: Inheritance

struct Grade {
  var letter: Character
  var points: Double
  var credits: Double
}

class Person {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

class Student {
  var grades: [Grade] = []
  
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}





//: [⇒ Next: 03 - Challenge - Inheritance](@next)
