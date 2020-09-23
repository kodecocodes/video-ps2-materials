//: [⇐ Previous: 05 - More Switch Statements](@previous)
//: ## Episode 06: Challenge - Switch Statements

/*:
 ## Challenge 1
 - Write a switch statement that switches on a tuple containing a `String` and an `Int`. The `String` is a name, and the `Int` is an age.
 - Use the cases below (or make up your own), and binding with `let` syntax, to assign the the name, followed by the life stage related to the age, to a `String` constant.
 
 For example, for the author of these challenges, you'd assign "Matt is an adult." to your constant.
 
 * 0-2 years: Infant
 * 3-12 years: Child
 * 13-19 years: Teenager
 * 20-39: Adult
 * 40-60: Middle aged
 * 61+: Elderly
*/

// TODO: Write solution here
let lifeStage: String

switch ("Ozma", 7) {
case (let name, 0...2):
  lifeStage = "\(name) is Infant."
case (let name, 3...12):
  lifeStage = "\(name) is Child."
case (let name, 13...19):
  lifeStage = "\(name) is Teenager."
case (let name, 20...39):
  lifeStage = "\(name) is Adult."
case (let name, 40...60):
  lifeStage = "\(name) is Middle aged."
case (let name, 61...):
  lifeStage = "\(name) is Eldery."
case (_, let age):
  lifeStage = "Unaccounted for age: \(age)."
}



/*:
 ## Challenge 2
 Imagine starting a new level in a video game. The character makes a series of movements in the game. Calculate the position of the character on a top-down level map after making a set of movements.
 - Create a `Direction` enumeration with cases for `north`, `south`, `east`, and `west`.
 - Write a function that takes a `Direction` array and returns a tuple of two Ints representing the character's location after all of the movements.
 - Assume the character starts at (0, 0)
 
 Example: A series of movements like [.north, .west, .west] would return a location of (-2, 1)
*/

// TODO: Write solution here
enum Direction {
  case north, south, east, west
}

func getLocation(for movements: [Direction]) -> (x: Int, y: Int) {
  
  movements.reduce(into: (x: 0, y: 0)) { (location, movement) in
    switch movement {
    case .north:
      location.y += 1
    case .south:
      location.y -= 1
    case .east:
      location.x += 1
    case .west:
      location.x -= 1
    }
  }
}

getLocation(for: [.north, .west, .west])





//: [⇒ Next: 07 - Associated Values](@next)
