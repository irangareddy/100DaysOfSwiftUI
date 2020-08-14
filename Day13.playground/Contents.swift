import UIKit


// MARK:- Variables and constants

var name = "Ranga"
// Variables can be changed
let joinedDate = "14/08/2020"
// Constants are fixed

// MARK:- Types of Data

type(of: name)

//  Type Annotations

var age: Int
age = 78

//  Float Vs Double

var lalitude: Double
lalitude = 34.347348

var longitude: Float
longitude = -123382.3232323

//  Type Inference

let likes = 9832

//  Bool

var isAccepted = true

var isDone = false

// MARK:- Operators

var a = 22
var b = 17
var c: Int

c = a + b
c = a / b
c = a - b
c = a * b
c = a % b

let firstName = "Ranga Reddy"
let lastName = "Nukala"

let fullName = firstName + " " + lastName

// MARK:- Comparison operators

c > 5
c < 8
c >= 5
c <= 6

//  Comparing Strings

firstName == lastName
firstName != lastName
firstName > lastName
firstName < lastName

//  Not Operator

!isDone


// MARK:- String interpolation

print("I am \(firstName) \(lastName)")
print("The Sum of a and b is \(a+b)")

// MARK:- Arrays

var superheroes = ["IronMan","SpiderMan","Thor"]
superheroes[0]

type(of: superheroes)

//  To add different type of data to an Array

var allData: [Any] = ["Hello",78,true,56.9]
allData[2]

type(of: allData)

//  Starting withEmpty Arrays

//#1
//var people: [String] = []
//#2
var people = [String]()

people.append("Arjun")
people.count


people += ["Ranga", "Aadhya", "Sunny"]

people.count

// MARK:- Dictionaries

var Person = ["name": "Ranga","age":"20","website":"irangareddy.com"]

Person["name"]
Person["website"]

// MARK:- Conditional statements

if isAccepted {
    print("You Application is Accepted")
} else if isDone {
    print("We love your work but better luck next time")
} else {
    print("Better luck next time buddy")
}

if isAccepted && isDone {
    print("You Made It")
} else if isAccepted || isDone {
    print("Good")
} else {
    print("Not so impressive")
}

// MARK:- Loops

//  for loop

for _ in 111...121{
    print("I love writing code")
}

for value in 1..<Int.random(in: 2...10) {
    print("Deploying the #\(value) App")
}

let paragraph = """
Computers are great at doing boring tasks billions of times in the time it took you to read this sentence.
"""

for character in paragraph {
    print(character)
}

var folks = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]


for i in 0...3 {
    print("\(folks[i]) gonna \(actions[i])")
}
//  Inner loops

for i in 0 ..< folks.count {
    var str = "\(folks[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

//  While loops


var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 222 {
        break
    }
}

for folk in folks {
    if folk == "fakers" {
        continue
    }
    
    print("\(folk) gonna fake")
}


// MARK:- Switch Case

var SocialMedia = "Instagram"

switch SocialMedia {
case "Instagram":
    print("Instagram: Reach me out @irangareddy")
case "LinkedIn":
    print("LinkedIn: Reach me out @irangareddy")
case "Twitter":
    print("Twitter: Reach me out @irangareddy")
case "Dev.to":
    print("Dev.to: Reach me out @irangareddy")
default:
    print("Google me as irangareddy")
}

