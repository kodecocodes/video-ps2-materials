//: [⇐ Previous: 01 - Introduction](@previous)
//: ## Episode 02 - Functions

// --------------------------------------
let passingGrade = 50
let jessyGrade = 41
let ozmaGrade = 87
// --------------------------------------

//: Every function will have a name, parameter list, and body.
//:
//: Parameter lists can be empty.
func printMeow() {
  print("Meow!")
}

printMeow()

//: Parameter lists can also contain one or more parameters.
func printPassStatus(grade: Int) {
  print(grade >= passingGrade ? "You passed!" : "Glue != food.")
}

//: When you call a function with parameters, you provide values as arguments for those parameters.

printPassStatus(grade: jessyGrade)

//: You can provide default values for parameters. When you use default values, they should be for parameters near the end of the parameter list.
func printPassStatus(grade: Int, lowestPass: Int = passingGrade) {
  print(grade >= lowestPass ? "Good kitty!" : "Keep your paws off the table!")
}

//: When you call a function, you don't need to provide arguments for parameters with a default value.

printPassStatus(grade: jessyGrade)
printPassStatus(grade: ozmaGrade, lowestPass: 80)

//: You can assign argument labels that differ from their parameter names. Argument labels go before parameter names in the parameter list.

func printPassStatus(for grade: Int, lowestPass: Int = passingGrade) {
  print(grade >= lowestPass ? "You've earned a treat." : "🙃")
}

printPassStatus(for: ozmaGrade, lowestPass: 80)

//: You can also choose to have no argument labels with underscores.

func printHighestGrade(_ grade1: Int, _ grade2: Int) {
  print(grade1 >= grade2 ? grade1 : grade2)
}

printHighestGrade(jessyGrade, ozmaGrade)

//: Functions can also return values.
//:
//: The return type is specified after the parameter list and a return token
//: To return a value, use the `return` keyword and then the value you want to return


func getPassStatus(for grade: Int, lowestPass: Int = passingGrade) -> Bool {
  return grade >= lowestPass
}

let jessyPassStatus = getPassStatus(for: jessyGrade)

//: If the body of a function only contains one statement, it can implicitly return the result of that statement without the `return` keyword

func getPassStatus2(for grade: Int, lowestPass: Int = passingGrade) -> Bool {
  grade >= lowestPass
}

let ozmaPassStatus = getPassStatus2(for: ozmaGrade, lowestPass: 80)



//: [⇒ Next: 03 - Challenge - Functions](@next)
