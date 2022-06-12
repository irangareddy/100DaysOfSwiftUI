import UIKit

// MARK:- Arrays

var TeamMembers = ["Ranga","Naveen","Sree","Swapna"]
TeamMembers[3]

let temperatures: [Double] = [32.1, 21.12]

// What I understood is ?
// When we want to store large amount of data of same type we can use arrays

// MARK:- Sets

var colors = Set(["red", "green", "blue"])
colors = Set(["red", "green", "blue","red","yellow","green"])

// What I understood is ?
// Sets doesn't have a proper order and it will not allow duplicates

// MARK:- Tuples

var company = (name: "Zomato", role: "SDE-1 (iOS Developer)")

var person = (name: "Paul", age: 40, isMarried: true)
person.0
person.isMarried

// What I understood is ?
// Tuple creates a variable array here we can store any number of values of different types.But, tuples are fixed.

// MARK:- Arrays vs sets vs tuples

// Tuples - we use for precise values
// Sets - To avoid duplictes and order doesn't matter
// Arrays - More often to save same type of data. and matters order

// MARK:- Dictionaries

let goals = [
    "Ranga" : 2,
    "Arjun" : 3
]
goals["Ranga"]


let Contactlist: [String : Int] = ["Ranga" : 715212791,"Aadhya": 67257112]

// MARK:- Dictionary default values

let favoriteIceCream = [
    "Ranga":"ButterScoch","Sunny":"Choclate"]

favoriteIceCream["ram",default: "Not avaiable"]

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["Scotland"]

// MARK:- Creating empty collections

var tmem = [String:String]()

tmem["Ranga"] = "Dev"

var results = [Int]()

var words = Set<String>()
var arrwords = Array<String>()
var dicwords = Dictionary<String, String>()

// MARK:- Enums

enum Result {
    case success
    case failure
}

var loginStatus = Result.failure

// MARK:- Enum associated values

enum Alerts {
    case warning(type: String)
    case message(from: String,data: String)
}


Alerts.message(from: "Ranga", data: "Hi there")


// MARK:- Enum raw values


enum Level: String {
    case bronze = "bronze"
    case gold
    case diamond
    case platinum
}

Level.gold.rawValue

// MARK:- Summary

//Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
//Arrays store items in the order you add them, and you access them using numerical positions.
//Sets store items without any order, so you can’t access them using numerical positions.
//Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
//Dictionaries store items according to a key, and you can read items using those keys.
//Enums are a way of grouping related values so you can use them without spelling mistakes.
//You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.





