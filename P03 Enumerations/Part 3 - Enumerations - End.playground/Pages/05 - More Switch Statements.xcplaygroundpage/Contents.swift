//: [⇐ Previous: 04 - Switch Statements](@previous)
//: ## Episode 05: More Switch Statements

//: Switching on values

func getDescription(for number: Int) -> String {
  switch number {
  case 0:
    return "Zero"
  case 1...9:
    return "Between 1 and 9"
  case let negativeNumber where negativeNumber < 0:
    return "Negative"
  case _ where number > .max / 2:
    return "Very large!"
  default:
    return "No Description"
  }
}

getDescription(for: 0)
getDescription(for: 4)
getDescription(for: -52)
getDescription(for: Int.max)
getDescription(for: 15)


//: Switching on expressions

let number = Int.max
let numberIsEven: Bool

switch number % 2 {
case 0:
  numberIsEven = true
default:
  numberIsEven = false
}


//: Switching on multiple values

func pointCategory(for coordinates: (Double, Double)) -> String {
  switch coordinates {
  case (0,0):
    return "Origin"
  case (let x, 0):
    return "On the x-axis at \(x)"
  case (0, let y):
    return "On the y-axis at \(y)"
  case _ where coordinates.0 == coordinates.1:
    return "Along y = x"
  case let (x, y) where y == x * x:
    return "Along y = x ^ 2"
  case let (x, y):
    return "No zero coordinates. x = \(x), y = \(y)"
  }
}

pointCategory(for: (0, 0))
pointCategory(for: (50, 0))
pointCategory(for: (0, 3))
pointCategory(for: (-4, 17))
pointCategory(for: (2, 4))
pointCategory(for: (6, 6))



//: [⇒ Next: 06 - Challenge - Switch Statements](@next)

