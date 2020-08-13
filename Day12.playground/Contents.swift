import UIKit

// MARK:- Optionals


// MARK:- Handling missing data

var name: String? = nil

name = "Ranga"

// MARK:- Unwrapping optionals

if let unwrappedName = name {
    print("\(unwrappedName.count) letters")
} else {
    print("Name is Empty")
}

// MARK:- Unwrapping with guard

func getWebite() -> String? {
    "https://www.apple.com"
}

func runWebsite() {
    guard let website = getWebite() else {
        return
    }
    print("running...\(website)")
}

runWebsite()


// MARK:- Force unwrapping

// Safe Value
var likes = "7623"
var intLikes = Int(likes)!

// UnSafe Value

likes = "Ranga"
//intLikes = Int(likes)!


enum Direction: CaseIterable {
    case north, south, east, west

    static func random() -> Direction {
        Direction.allCases.randomElement()!
    }
}

let myDirection = Direction.random()
print(myDirection)

// MARK:- Implicitly unwrapped optionals

var joinedDate: String! = nil

joinedDate = "13/08/2020"

print(joinedDate!)

// MARK:- Nil coalescing

print(joinedDate ?? "Not yet joined")

// MARK:- optional chaining


let languages = ["Flutter", "SwiftUI"]
let lowercaseUsername = languages.first?.lowercased()


let leaders = ["Ranga","Sunny","Jai","Arjun","Aadhya"]
let numberOfLeaders = leaders.last?.count ?? 0

// MARK:- Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("this \(result) is not accepted")
} else {
    print("Hello")
}

try! checkPassword("Not password")
print("Successfull")


// MARK:- Failable initializers


struct User {
    var username: String
    var password: String

    init?(username: String, password: String) {
        guard password.count >= 8 else { return nil }
        guard password.lowercased() != "password" else { return nil }

        self.username = username
        self.password = password
    }
}


let tim = User(username: "TimC", password: "app1e")
let craig = User(username: "CraigF", password: "ha1rf0rce0ne")



// MARK:- Typecasting

class Car {
    var numberOfDoors = 5
}


class Tesla: Car {
    var isElectric = true
}


class RollsRoyce: Car {
    var madeFor = "Royals"
    
}

let tesla = Tesla()
let rr = RollsRoyce()
let cars = [tesla, rr]

for car in cars {
     if let tesla = car as? Tesla {
        print("Does Tesla Cars are electric: \(tesla.isElectric)")
       } else if let rr = car as? RollsRoyce {
        print("Rolls Royce is meant for \(rr.madeFor)")
       }
}


// MARK:- Summary

//  Optionals let us represent the absence of a value in a clear and unambiguous way.
//  Swift won’t let us use optionals without unwrapping them, either using if let or using guard let.
//  You can force unwrap optionals with an exclamation mark, but if you try to force unwrap nil your code will crash.
//  Implicitly unwrapped optionals don’t have the safety checks of regular optionals.
//  You can use nil coalescing to unwrap an optional and provide a default value if there was nothing inside.
//  Optional chaining lets us write code to manipulate an optional, but if the optional turns out to be empty the code is ignored.
//  You can use try? to convert a throwing function into an optional return value, or try! to crash if an error is thrown.
//  If you need your initializer to fail when it’s given bad input, use init?() to make a failable initializer.
//  You can use typecasting to convert one type of object to another.

