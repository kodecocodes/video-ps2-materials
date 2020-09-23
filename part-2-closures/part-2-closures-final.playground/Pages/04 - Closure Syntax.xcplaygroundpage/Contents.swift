//: [⇐ Previous: 03 - Challenge - Closures](@previous)
//: ## Episode 04: Closure Syntaxes

// --------------------------------------
typealias Operate = (Int, Int) -> Int
// --------------------------------------

let longClosure = { (a: Int, b: Int) -> Int in
  a * b
}

let noParameterTypes: Operate = { (a, b) -> Int in
  a * b
}

let noReturnType: Operate = { (a, b) in
  a * b
}

let shortClosure: Operate = { $0 * $1 }

longClosure(4, 2)
noParameterTypes(4, 2)
noReturnType(4, 2)
shortClosure(4, 2)

let voidClosure: () -> Void = { () -> Void in
  print("Yay, Swift!")
}
voidClosure()

// --------------------------------------
func printResult(_ a: Int, _ b: Int, _ operate: Operate) {
  print(operate(a, b))
}
// --------------------------------------

printResult(10, 3, { $0 * $1 + 10 })

printResult(10, 3) { $0 * $1 + 10 }



//: [⇒ Next: 05 - Challenge - Closure Syntaxes](@next)
