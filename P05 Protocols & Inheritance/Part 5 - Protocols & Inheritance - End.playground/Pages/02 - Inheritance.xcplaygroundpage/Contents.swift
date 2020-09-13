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

class Student: Person {
  var grades: [Grade] = []
}

class SchoolBandMember: Student {
  var minimumPracticeTime = 2
}

class StudentAthlete: Student {
  override var grades: [Grade] {
    didSet {
      if !isEligible {
        print("It's time to study!")
      }
    }
  }
  var isEligible: Bool {
    return grades.filter { $0.letter == "F" } .count < 3
  }
}

let jon = Person(firstName: "Jon", lastName: "Snon")
let jane = Student(firstName: "Jane", lastName: "Snane")
let jessy = SchoolBandMember(firstName: "Jessy", lastName: "Catterwaul")
let marty = StudentAthlete(firstName: "Marty", lastName: "McWolf")

let array = [jane, jessy, marty]

let student = marty as Student
let athlete = student as! StudentAthlete

let utterFailureGrade = Grade(letter: "F", points: 0, credits: 0)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)
athlete.grades.append(utterFailureGrade)

func getEveningActivity(student: Student) -> String {
  if let bandMember = student as? SchoolBandMember {
    return "Practicing for at least \(bandMember.minimumPracticeTime)"
  } else {
    return "Hitting the books!"
  }
}

getEveningActivity(student: jessy)
getEveningActivity(student: jane)

let historyGrade = Grade(letter: "B", points: 9, credits: 3)
jane.grades.append(historyGrade)



//: [⇒ Next: 03 - Challenge - Inheritance](@next)
