/*:
 ## Challenge Time 😎
 
 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
*/


let names = ["Ray", "Vicki", "Ozma", "Catie", "Jessy"]

let allNames = names.reduce("") { result, name in
  return result + " " + name
}


/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
*/


let filteredNames = names.filter {
  $0.count > 4
}.reduce("") { result, name in
    return result + " 🐱 " + name
}


/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
*/


let namesAndAges = ["Ozma": 7, "Leo": 14, "Jessy": 35, "Albus": 150]

let under18 = namesAndAges.filter {
  $0.value < 18
}


/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
*/


let adults = namesAndAges.filter {
  $0.value >= 18
}
.map { nameAndAge in
    return nameAndAge.key
}
