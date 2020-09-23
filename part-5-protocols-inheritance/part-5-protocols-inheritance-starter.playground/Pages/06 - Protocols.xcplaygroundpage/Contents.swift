//: [⇐ Previous: 05 - Challenge: Initializers](@previous)
//: ## Episode 06: Protocols

class Animal {
  let name: String
  
  required init(name: String) {
    self.name = name
  }
  
  func speak() { }
}

class Dog: Animal {
  var tricksLearnedCount: Int
  
  init(name: String, tricksLearnedCount: Int) {
    self.tricksLearnedCount = tricksLearnedCount
    super.init(name: name)
  }
  
  convenience required init(name: String) {
    self.init(name: name, tricksLearnedCount: 0)
  }
  
  override func speak() {
    print("Bow wow! My name is \(name)!")
  }
}

class Cat: Animal {
  override func speak() {
    print("My name is \(name). Please leave me alone. I must look at this wall.")
  }
}

let animals = [Dog(name: "Fang"), Cat(name: "Mr. Midnight")]
for animal in animals {
  animal.speak()
}




//: [⇒ Next: 07 - Protocols & Extensions](@next)
