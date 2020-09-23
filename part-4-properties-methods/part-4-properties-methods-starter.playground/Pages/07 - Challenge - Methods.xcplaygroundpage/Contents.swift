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
  let grade: Int
}

struct Classroom {
  let className: String
  let students: [Student]
  
  func getHighestGrade() -> Int? {
    return students.map { $0.grade } .max()
  }
}

let classroom = Classroom(
  className: "Usable Clock Design",
  students: [
    Student(firstName: "Chris", lastName: "Belanger", grade: 70),
    Student(firstName: "Catie", lastName: "Catterwaul", grade: 95),
    Student(firstName: "Salvador", lastName: "Dalí", grade: 2)
  ]
)

classroom.getHighestGrade()



//: [Next](@next)



