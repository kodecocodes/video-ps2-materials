//: [⇐ Previous: 02 - Enumerations](@previous)
//: ## Episode 03: Challenge - Enumerations

/*:
This extension gives you a nice preview of a SwiftUI Image in a playground by wrapping the Image in a UIKit UIView.
Hopefully we will have more built-in support for SwiftUI in future versions of Xcode Playgrounds!
*/
import UIKit
import SwiftUI

extension Image: CustomPlaygroundDisplayConvertible {
  public var playgroundDescription: Any {
    let hostingController = UIHostingController(
      rootView: self.resizable().padding()
    )
    let view: UIView = hostingController.view
    view.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
    return view
  }
}
// --------------------------------------

/*:
 ## Challenge 1
 Another handy use case for an enumeration is storing a specific set of strings you need to use!
 - Create a "Suit" enumeration with a `String` raw value type
 - Make a case for each string used to create an `Image` in the code below. (Watch for misspellings!)
 - Replace each use of a string with the raw value of an enumeration case
*/

// TODO: Write enumeration here


// --------------------------------------
let heart = Image(systemName: "suit.heart.fill")
let club = Image(systemName: "suit.club.fil")
let spade = Image(systemName: "suit.spade.fill")
let diamond = Image(systemName: "suite.diamond.fill")
// --------------------------------------


/*:
 ## Challenge 2
 Integer raw values don’t have to be in an incremental order! Coins are a good use case.
 
 - Create an enumeration called "Coin" and add cases for different types of coins.
 - Create an array called `coinPurse` that contains coins. Add an assortment of pennies, nickels, dimes, and quarters (or whatever coins you used!) to it.
*/

// TODO: Write solution here


/*:
 ## Bonus Challenge!
 Try using `reduce` to figure out how much money is in your coin purse.
 Remember to use the `rawValue` property!
*/




//: [⇒ Next: 04 - Switch Statements](@next)
