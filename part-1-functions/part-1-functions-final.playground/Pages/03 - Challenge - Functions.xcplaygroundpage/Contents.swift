//: [⇐ Previous: 02 - Functions](@previous)
//: ## Episode 03 - Challenge - Functions

/*:
 ## Challenge 1
 Write a function that:
 - Takes at least two `String` parameters
 - Has a default value for one parameter
 - Returns a `String`
 - Combines the two parameters in some way and returns the result
 
 You can add any other parameters you like, and you can modify or add anything you want to concatenated strings!
*/

// TODO: Write solution here

func generateTwitterHandle(name: String, anotherWord word: String = "Meow") -> String {
  name.lowercased() + word
}

generateTwitterHandle(name: "Ozma")

func deutschify(_ word1: String, _ word2: String = "katzen") -> String {
  let adjective = ["Frölich", "Rund", "Salzig", "Schwarze"].randomElement()!
  let ending = ["schule", "keit", "maler", "maschine"].randomElement()!
  
  return adjective + word1 + word2 + ending
}


deutschify("swifty")
deutschify("arctic", "tree")

//: [⇒ Next: 04 - Overloading](@next)
