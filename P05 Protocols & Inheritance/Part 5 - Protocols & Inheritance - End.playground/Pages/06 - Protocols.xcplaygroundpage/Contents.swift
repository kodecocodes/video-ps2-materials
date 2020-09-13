//: [⇐ Previous: 05 - Challenge: Initializers](@previous)
//: ## Episode 06: Protocols

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




//: [⇒ Next: 07 - Protocols & Extensions](@next)
