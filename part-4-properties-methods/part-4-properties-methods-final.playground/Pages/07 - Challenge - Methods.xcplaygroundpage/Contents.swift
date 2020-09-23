//: [⇐ Previous: 06 - Methods](@previous)
//: ## Episode 07: Challenge - Methods

//: [Previous](@previous)
/*:
 # Challenge Time - Methods!
 
 Remember these Student and Classroom structures from Programming in Swift: Fundamentals?
 
 - Add a method to `Classroom` named `curveGrades()`.
 - This method should first find the difference between 100 and the highest grade, and add that amount to all students' scores.
 - Then, it should sort the students array so it is ordered from the student with the highest score, to the one with the lowest.

 **Hint**: Remember that structures are value types, so iterating with `for student in students`, and attempting to modify `student`, won't work. (Try it; you'll get an error!) There are other solutions though!
 */


struct Student {
  let firstName: String
  let lastName: String
  var grade: Int
}

struct Classroom {
  let className: String
  var students: [Student]
  
  func getHighestGrade() -> Int? {
    return students.map { $0.grade } .max()
  }
  
  mutating func curveGrades() {
    guard let highestGrade = getHighestGrade() else {
      return
    }
    
    students = students.map { [curveAmount = 100 - highestGrade] student in
      var student = student
      student.grade += curveAmount
      return student
    }
    .sorted { $0.grade > $1.grade }
  }
}

var classroom = Classroom(
  className: "Usable Clock Design",
  students: [
    Student(firstName: "Chris", lastName: "Belanger", grade: 70),
    Student(firstName: "Catie", lastName: "Catterwaul", grade: 95),
    Student(firstName: "Salvador", lastName: "Dalí", grade: 2)
  ]
)

classroom.getHighestGrade()
classroom.curveGrades()
classroom.students



//: [Next](@next)



