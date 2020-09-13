//: [⇐ Previous: 07 - compactMap & flatMap](@previous)
//: ## Episode 08: Closures & Collections

// --------------------------------------
class Student {
  let name: String
  var grade: Int
  var pet: String?
  var libraryBooks: [String]
  
  init(name: String, grade: Int, pet: String? = nil, libraryBooks: [String]) {
    self.name = name
    self.grade = grade
    self.pet = pet
    self.libraryBooks = libraryBooks
  }
  
  func getPassStatus(lowestPass: Int = 50) -> Bool {
    grade >= lowestPass
  }
  
  func earnExtraCredit() {
    grade += 10
  }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango", libraryBooks: ["The Book of Atrus", "Living by the Code", "Mastering Git"])
let sam = Student(name: "Sam", grade: 99, pet: nil, libraryBooks: ["Mastering Git"])
let catie = Student(name: "Catie", grade: 75, pet: "Ozma", libraryBooks: ["Hogfather", "Good Omens"])
let andrea = Student(name: "Andrea", grade: 88, pet: "Kitten", libraryBooks: ["Dare to Lead", "The Warrior's Apprentice"])

let students = [chris, sam, catie, andrea]
// --------------------------------------

/*:
 ## Challenge 1 - `forEach` & `map`
 There are two `for` loops below.
 Rewrite one of them using `forEach` and the other with `map`
*/

for student in students {
  student.earnExtraCredit()
}

var classLibraryBooks: [[String]] = []
for student in students {
  classLibraryBooks.append(student.libraryBooks)
}




/*:
 ## Challenge 2 - compactMap
 Replace the `for` loop below with compactMap.
 It will filter out the `nil` values for you!
*/

var classPets: [String] = []
for student in students {
  if let pet = student.pet {
    classPets.append(pet)
  }
}



/*:
 ## Challenge 3 - flatMap
 In Challenge 1 you created `libraryBooks`, an array of String arrays!
 Try using flatMap to flatten all of the books into a single String array.
*/



//: [⇒ Next: 09 - filter, reduce, & sort](@next)
