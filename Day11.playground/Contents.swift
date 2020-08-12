import UIKit

// MARK:- Protocol

protocol Purchaseable {
    var name: String { get set }
}


struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Car: Purchaseable {
    var name: String
    var manufacturer: String
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}


func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

let zeroToOne = Book(name: "Zero to One", author: "Peter Thiel, Blake Masters")

buy(zeroToOne)

// MARK:- Protocol Inheritance


// Example 1:

protocol Readable {
    func read() -> String
}

protocol Writeable {
    func write(content: String)
}

protocol Literate: Readable, Writeable {
    func qualification()
}


// Example 2:

protocol Anonymous {
    var id: Int {get}
}

protocol User: Anonymous {
    var name: String {get set}
}

protocol PrimeUser: User {
    var subscription: Int {get set}
}

// MARK:- Extensions

extension Int {
    func kFormatter() -> String {
        var ktemp: Int;
        if(self>=1000) {
           ktemp = self/1000
           return "\(ktemp)k"
        } else {
            return "\(self)"
        }
    }
}

let likes = 1687
print("My Likes: \(likes.kFormatter())")

extension String {
    var isLong: Bool {
        return count > 25
    }
}


let para = "rangareddy"
para.isLong


extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "\(prefix)\(self)"
    }
}

para.withPrefix("i")

// MARK:- Protocol extensions


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

               for name in self {
                   print(name)
               }
    }
}


print(pythons.summarize())
print(beatles.summarize())


// MARK:- Protocol-oriented programming


protocol Identifiable {
    var id: String { get set }
    func identify()
}


extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}


struct Employee: Identifiable {
    var id: String
}

let e1 = Employee(id: "RC020230")
e1.identify()

// MARK:- Summary

//  Protocols describe what methods and properties a conforming type must have, but don’t provide the implementations of those methods.
//  You can build protocols on top of other protocols, similar to classes.
//  Extensions let you add methods and computed properties to specific types such as Int.
//  Protocol extensions let you add methods and computed properties to protocols.
//  Protocol-oriented programming is the practice of designing your app architecture as a series of protocols, then using protocol extensions to provide default method implementations.

