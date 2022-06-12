import UIKit

// MARK:- Structs

// MARK:- Creating your own DataTypes

struct User {
    var name: String
    let id: Int
}

var ranga = User(name: "Ranga", id: 0000001)

ranga.name
ranga.id

// Change Name

ranga.name = "Ranga Reddy"

ranga.name


// MARK:- Computed properties


struct Reciepe {
    let name: String
    let isIndian: Bool
    
    var expectedTime: String {
        isIndian ? "\(name) will take \(Int.random(in: 10...20)) mins to get ready" : "\(name) will take \(Int.random(in: 1...10)) mins to get ready"
    }
}


let order1 = Reciepe(name: "Grilled Chicken", isIndian: true)

print(order1.expectedTime)

// MARK:- Property observers


struct Steps {
    
    var setGoal: Int
    var count: Int {
        didSet {
            if (count >= setGoal) {
                       print("Great!, You have accomplished your goal today, Keep going")
                   }else {
                print("\(setGoal - count) steps remaining to reach your goal")
                
            }
        }
    }
}

var today = Steps(setGoal: 5000, count: 100)

today.count = 300
today.count = 512
today.count = 1200
today.count = 2352
today.count = 5000

// MARK:- Methods

struct Person {
    var name: String
    var working: Bool
    var company: String
    var role: String
    
    func about() -> String {
        
        working ? "I am \(name), working as \(role) in \(company)" : "I am \(name), looking for \(role) in \(company)"
        
    }
}



let person1 = Person(name: "Ranga", working: false, company: "Tesla", role: "App Developer")



print(person1.about())

// MARK:- Mutating methods

struct Message {
    var name: String
    var message: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}


var msg1 = Message(name: "Ranga", message: "Wtf!!!")
msg1.makeAnonymous()

print("\(msg1.message) from \(msg1.name)")


// MARK:- Properties and methods of strings

let quote = "Do not let the behavior of others destroy your inner peace ✌️"

print(quote.count)
print(quote.hasPrefix("Do"))
print(quote.hasSuffix("✌️"))
print(quote.lowercased())
print(quote.uppercased())
print(quote.isEmpty)
print(quote.capitalized)
print(quote.contains("others"))
print(quote.last!)
print(quote.first!)
print(quote.sorted())


// MARK:- Properties and methods of arrays


var artists = ["Robbinbood","Jhon","Max","Robert"]

print(artists.capacity)
print(artists.count)
print(artists.firstIndex(of: "Max")!)
print(artists.remove(at: 3))
print(artists.append("Nymer"))
print(artists.dropFirst())
print(artists.isEmpty)
print(artists.dropLast())
print(artists.contains("others"))
print(artists.last!)
print(artists.first!)
print(artists.sorted())

var breeds = ["Corgi", "Labrador", "Samoyed"]
breeds.contains("corgi")
