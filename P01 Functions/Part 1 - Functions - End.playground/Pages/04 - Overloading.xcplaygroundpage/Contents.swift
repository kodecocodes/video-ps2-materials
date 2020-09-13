//: [⇐ Previous: 03 - Challenge - Functions](@previous)
//: ## Episode 04 - Overloading
// --------------------------------------
let passingGrade = 50
let jessyGrade = 49
let ozmaGrade = 87
let ozmaAllGrades = [60, 96, 87, 42]
// --------------------------------------

//: ### Function overloads
//: Overloading lets you define similar functions that share a name

//func getPassStatus(for grade: Int) -> Bool {
//  grade >= passingGrade
//}

//: Overload using Different Number of Parameters

//func getPassStatus(for grade: Int, lowestPass: Int ) -> Bool {
//  grade >= lowestPass
//}

//: Use default values for parameters, instead of overloads, when you can

func getPassStatus(for grade: Int, lowestPass: Int = passingGrade ) -> Bool {
  grade >= lowestPass
}

getPassStatus(for: ozmaGrade, lowestPass: 88)
getPassStatus(for: jessyGrade)

//: Overload using Different Parameter Types

func getPassStatus(for grades: [Int]) -> Bool {
  var totalGrade = 0
  for grade in grades {
    totalGrade += grade
  }
  let averageGrade = totalGrade / grades.count
  
  return averageGrade >= passingGrade
}

getPassStatus(for: ozmaAllGrades)

//: Overload using Different Argument Labels, like Swift's `stride` functions

for i in stride(from: 10, to: 0, by: -2) {
  print(i)
}

for i in stride(from: 10, through: 0, by: -2) {
  print(i)
}


// fancy separator for console readability
print("\n ---//-----//--- \n")


//: Overload using Different Return Types

func getValue() -> Int {
  return 13
}

func getValue() -> String {
  "meow"
}

//let value = getValue()
let intValue: Int = getValue()


//: [⇒ Next: 05 - Advanced Parameters](@next)

