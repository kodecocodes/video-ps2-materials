//: [⇐ Previous: 01 - Introduction](@previous)
//: ## Episode 02: Closures

// --------------------------------------
typealias Operate = (Int, Int) -> Int

func add(a: Int, b: Int) -> Int {
  a + b
}

func printResult(_ operate: Operate, _ a: Int, _ b: Int) {
  let result = operate(a, b)
  print(result)
}
// --------------------------------------

var operate = add
var addClosure = { (a: Int, b: Int) -> Int in
  a + b
}

add(a: 7, b: 3)
operate(7, 3)
addClosure(7, 3)

printResult(add, 4, 5)
printResult(operate, 4, 5)
printResult(addClosure, 4, 5)
printResult(+, 4, 5)

printResult(
  { (a: Int, b: Int) -> Int in
    a * b + 100
  },
  7, 3
)



//: [⇒ Next: 03 - Challenge - Closures](@next)
