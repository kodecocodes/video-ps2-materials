//: [⇐ Previous: 06 - Protocols](@previous)
//: ## Episode 07: Protocols & Extensions

protocol Animal {
  var name: String { get }

  init(name: String)

  func speak()
}

extension Animal {
  func speak() {
    print("I'm an animal!")
  }
}

protocol Aloof {
  var name: String { get }
}

extension Aloof {
  var greeting: String {
    "My name is \(name). Please leave me alone."
  }
}

protocol AloofAnimal: Aloof, Animal { }

extension AloofAnimal {
  func speak() {
    print("\(greeting) I must look at this wall.")
  }
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

class Cat {
  let name: String
  
  required init(name: String) {
    self.name = name
  }
}

extension Cat: AloofAnimal {
  func speak() {
    print(greeting + "Meow!")
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

extension Int {
  var isEven: Bool {
    self % 2 == 0
  }
  var isOdd: Bool {
    (self + 1) % 2 == 0
  }
}

5.isOdd
5.isEven


extension Numeric {
  var squared: Self { self * self }
}

5.squared
5.5.squared


//: More Extensions!

// --------------------------------
enum Weekday: CaseIterable {
  case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

struct Time {
  var day: Weekday = .monday
  var hour: UInt = 0
}

extension Time {
  init(day: Weekday) {
    self.day = day
  }
}
// --------------------------------

Time(day: .friday, hour: 17)
Time()
Time(day: .wednesday)

//: [⇒ Next: 08 - Challenge - Protocols](@next)
