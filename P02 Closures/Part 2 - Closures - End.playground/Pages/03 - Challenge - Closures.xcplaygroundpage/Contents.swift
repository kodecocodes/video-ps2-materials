//: [⇐ Previous: 02 - Functions](@previous)
//: ## Episode 03: Challenge - Functions

/*:
 ## Challenge 1
 - Create a closure version of the function below.
 - Try out the function & closure!
*/

// --------------------------------------
func calculateFullName(firstName: String, lastName: String?) -> String {
  firstName + " " + (lastName ?? "")
}
// --------------------------------------

// TODO: Write solution here
let calculateFullName = { (firstName: String, lastName: String?) -> String in
  firstName + " " + (lastName ?? "")
}

let ozmaName = calculateFullName(firstName: "Ozma", lastName: "Catterwaul")
let princeName = calculateFullName("Prince", nil)

/*:
 ## Challenge 2
 - Call the `printResult` function below
 - Use an inline closure as an argument
*/

// --------------------------------------
typealias Operate = (Double, Double) -> Double

func printResult(_ operate: Operate, _ a: Double, _ b: Double) {
  let result = operate(a, b)
  print(result)
}
// --------------------------------------

// TODO: Write solution here
printResult(
  { (a, b) -> Double in
    ((a * a) + (b * b)).squareRoot()
  },
  5, 3
)



//: [⇒ Next: 04 - Closure Syntax](@next)
