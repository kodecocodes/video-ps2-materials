//: [⇐ Previous: 06 - Protocols](@previous)
//: ## Episode 07: Protocols & Extensions

protocol Animal {
  var name: String { get }

  init(name: String)

  func speak()
}

class Dog: Animal {
  let name: String
  var tricksLearnedCount: Int
  
  init(name: String, tricksLearnedCount: Int) {
    self.tricksLearnedCount = tricksLearnedCount
    self.name = name
  }
  
  convenience required init(name: String) {
    self.init(name: name, tricksLearnedCount: 0)
  }
  
  func speak() {
    print("Bow wow! My name is \(name)!")
  }
}

class Cat: Animal {
  let name: String
  
  required init(name: String) {
    self.name = name
  }
  
  func speak() {
    print("My name is \(name). Please leave me alone. I must look at this wall.")
  }
}

let animals: [Animal] = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
  animal.speak()
}







//: Extensions!

// --------------------------------
func isEven(_ value: Int) -> Bool {
  value % 2 == 0
}
func isOdd(_ value: Int) -> Bool {
  (value + 1) % 2 == 0
}
// --------------------------------



//: More Extensions!

// --------------------------------
enum Weekday: CaseIterable {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

struct Time {
  var day: Weekday = .monday
  var hour: UInt = 0
}
// --------------------------------




//: [⇒ Next: 08 - Challenge - Protocols](@next)
