import UIKit

// MARK:- Arithmetic operators

let value1 = 17
let value2 = 13

let addition = value1 + value2
let subraction = value1 - value2
let multiplication = value1 * value2
let division = value1 / value2
let modulo = value1 % value2


let weeks = 465 / 7
let days =  465 % 7
print("There are \(weeks) weeks and \(days) days until the event.")


let advancedBy = weeks.advanced(by: 10)
let distance = weeks.distance(to: 6)
let isMultiple = weeks.isMultiple(of: 6)



// MARK:- Operator overloading

// String Concatenation

let firstName = "Robert"
let secondName = "Doe"

let fullName = firstName + secondName
fullName.uppercased()

// Array Concatenation

let software = ["Ranga", "Aadhya"]
let hardware = ["Arjun", "Sunny"]

let teamMembers = software + hardware

// MARK:- Compound assignment operators

var health = 20
health += 1
health -= 2
health *= 3
health /= 4
health %= 5

// MARK:- Comparison operators

let highestScore = 556
let presentScore = 234

highestScore != presentScore
highestScore == presentScore
highestScore > presentScore
highestScore < presentScore
highestScore >= presentScore
highestScore <= presentScore

// Comparing String: Because, its a natural Alphabetical order

"Ranga" < "Reddy"

// MARK:- Conditions

let secureField1 = "somerandom"
let secureField2 = "somerandom"

if(secureField1 == secureField2) {
    print("You logged in")
} else {
    print("failed logged in")
}


// MARK:- Combining conditions


let isOwner = false
let isEditingEnabled = false
let isAdmin = true

if (isOwner == true && isEditingEnabled) || isAdmin == true {
    print("You can delete this post")
}


// MARK:- The ternary operator

isAdmin ? "You are a Admin" : "You are not Admin"

// MARK:- Switch statements

var status = 404

switch status {
case 100:
    print("Communicates transfer protocol-level information.")
case 200:
    print("Indicates that the client’s request was accepted successfully.")
case 300:
    print("Indicates that the client must take some additional action in order to complete their request.")
case 404:
    print("This category of error status codes points the finger at clients.")
case 500:
    print("The server takes responsibility for these error status codes")

default:
    print("Something went wrong")
}

// MARK:- Range operators

// More Dynamically written

status = 203

switch status {
case ..<200:
    print("Communicates transfer protocol-level information.")
case ..<300:
    print("Indicates that the client’s request was accepted successfully.")
case ..<400:
    print("Indicates that the client must take some additional action in order to complete their request.")
case ..<500:
    print("This category of error status codes points the finger at clients.")
case ..<600:
    print("The server takes responsibility for these error status codes")

default:
    print("Something went wrong")
}

// Summary


//Swift has operators for doing arithmetic and for comparison; they mostly work like you already know.
//There are compound variants of arithmetic operators that modify their variables in place: +=, -=, and so on.
//You can use if, else, and else if to run code based on the result of a condition.
//Swift has a ternary operator that combines a check with true and false code blocks. Although you might see it in other code, I wouldn’t recommend using it yourself.
//If you have multiple conditions using the same value, it’s often clearer to use switch instead.
//You can make ranges using ..< and ... depending on whether the last number should be excluded or included.


var age = 18
switch age {
case 0...8:
    fallthrough
case 9...18:
    print("You're still a minor")
default:
    print("You're an adult")
    
}


// About Fallthrough: The fallthrough keyword does not check the case conditions for the switch case that it causes execution to fall into. The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block, as in C’s standard switch statement behavior.
