import UIKit

// MARK:- Functions

func launch() {
    print("launching....")
}

launch()

func launchWithName(name: String) {
    print("launching...\(name)")
}

launchWithName(name: "Figma")


func issueRaised(by name: String,in app: String) {
    print("Issue Raised by \(name) in \(app) Application")
}

issueRaised(by: "Ranga", in: "Vlc Player")

func countLetters(in str: String) {
    print("The String \(str) has \(str.count) letters")
}

countLetters(in: "RangaReddy")

func add(_ a: Int,_ b: Int) {
    print("The Sum of two numbers is \(a+b)")
}

add(5, 8)

// Returning Functions

func canEdit(role: String) -> Bool {
    if role == "Admin" { return true }
    if role == "Owner" { return true }
    return false
}

canEdit(role: "Admin") ? print("Editing...") : print("You can't edit this File")


// MARK:- Optionals

func getStatus(_ status: Bool) -> String? {
    if status { return "online" }
    return nil
}

if let status = getStatus(true) {
    print(status)
}

func experience(in field: String) -> Int? {
    if field == "ios" {return 6}
    if field == "flutter" {return 2}
    return nil
}

if let experience = experience(in: "ios") {
    print("\(experience) Months")
}


var games = ["fortnite","pubg","callofduty"]

func position(of str: String, in arr: [String]) -> Int? {
    
    
    for i in 0..<arr.count {
        if arr[i] == str {
            return i
        }
    }
    return nil
}

var searchString: String
searchString = "pubg"

if let pos = position(of: searchString, in: games) {
    print("The position of \(searchString.uppercased()) in Games is \(pos+1)")
}


func todayDate() -> String! {
    "15/08/2020"
}

print(todayDate()!)




var optionalType1: String = "Ranga" //  value
var optionalType2: String? = nil // nil or value
var optionalType3: String! // nil or value or empty

print(optionalType1)
optionalType2 == nil ? print("use optional Chaining because,You have no value here") : print("You have a value here")
//print(optionalType3)  This gonna crash for sure 😂



// MARK:- Optional chaining

func getOptional() -> Int? {
    let randomValue = Int.random(in: 0...20)
    
    if (randomValue % 2 == 0) {
        return Int.random(in: 1...10)
    } else {
        return nil
    }
}

if let luckyNumber = getOptional() {
    print("You are \(luckyNumber) lucky on 10 Scale")
} else {
    print("Don't ever think you are lucky")
}


let luckyNilCoalescing = getOptional() ?? 0
print("You are \(luckyNilCoalescing) lucky on 10 Scale")


// MARK:- Enumerations

enum TeslaModels {
    case ModelS
    case Model3
    case ModelX
    case ModelY
    case CyberTruck(topSpeed: Int)
}

func getMyTesla(_ name: TeslaModels) {
    switch name {
    case .ModelS:
        print("Geting your \(name)")
    case .Model3:
        print("Geting your \(name)")
    case .ModelX:
        print("Geting your \(name)")
    case .CyberTruck(let topSpeed) where topSpeed > 200:
        print("Your Monster is Ready")
    case .ModelY, .CyberTruck:
           print("Geting your \(name)")
    }
}
getMyTesla(.CyberTruck(topSpeed: 250))


// MARK:- Structs

struct User {
    var name: String
    var id: Int
    
    func bio() {
        print("I am \(name)")
    }
}

let user1 = User(name: "Ranga", id: 001)

user1.name

var user1Copy = user1
user1Copy.name = "Reddy"

user1.name
user1.bio()
user1Copy.name
user1Copy.bio()


// MARK:- Classes

class Human {
    var name: String
    
    init(name: String) {
        self.name =  name
    }
    
    func bio() {
        print("I am \(name)")
    }
    
}

class Person: Human {
    var id: Int
    
    init(name:String, id:Int) {
        self.id = id
        super.init(name: name)
    }
    
    override func bio() {
        super.bio()
        print("My id is \(id)")
    }
}

let person1 = Person(name: "Jhon", id: 001)

person1.name

var person1Copy = person1
person1Copy.name = "Doe"

person1.name
person1.bio()
person1Copy.name
person1Copy.bio()
