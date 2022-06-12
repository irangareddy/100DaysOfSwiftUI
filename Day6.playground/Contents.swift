import UIKit

// MARK:- Creating basic closures

let greet = {
    print("Welcome to the Day6")
}

greet()

// MARK:- Accepting parameters in a closure

let greetWithName = { (name: String) in
    print("Welcome to the Day6, \(name)")
}
 
greetWithName("Ranga")

// MARK:- Returning values from a closure

let wishWithReturn = { (name: String, age: Int) -> String in
    return "Wish a very Happy Brithday, \(name) and your turning \(age) today!!!"
}

print(wishWithReturn("Ranga", 20))

// With Out Passing Parameters

let isMyBirthday = { () -> Bool in
    if("TodayDate" == "MyBirthdayDate") {
        return true
    }
    return false
}

isMyBirthday()


// MARK:- Closures as parameters

let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
func printDocument(_ contents: () -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents()
}
printDocument {
    resignation("Ranga")
}
printDocument(greet)

let writting = {
    print("I am Writting")
}

func whatAreYouDoing(name: String, action: () -> Void) {
    print("\(name) said, " )
    action()
}


whatAreYouDoing(name: "Ranga", action: writting)

// MARK:- Trailing closure syntax

printDocument {
    print("Do some Action")
}


whatAreYouDoing(name: "Ranga") {
    print("lets Design something")
}

// Print is also a function
