//: [⇐ Previous: 05 - Challenge - Closure Syntax](@previous)
//: ## Episode 06: forEach & map
import Foundation

// --------------------------------------
var prices = [1.50, 10.00, 4.99, 2.30, 8.19]
// --------------------------------------

//: `forEach` - Loops over a collection and performs an operation

// `forEach` as a `for` loop
for price in prices {
  print(price)
}

prices.forEach { (price) in
  print(price)
}

prices.forEach { print($0) }


//: `map` - Loops over an array, executes closure code, returns a new array

// `map` as a `for` loop
var arrayForSalePrices: [Double] = []
for price in prices {
  arrayForSalePrices.append(price * 0.9)
}
arrayForSalePrices

let salePrices = prices.map { $0 * 0.9 }

let priceLabels = salePrices.map { (price) in
  String(format: "%.2f", price)
}


//: [⇒ Next: 07 - compactMap & flatMap](@next)
