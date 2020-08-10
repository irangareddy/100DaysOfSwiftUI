import UIKit


// MARK:- Initializers

enum Drinks {
    case thumbsup
    case sprite
    case frooti
    case redbull
    case other
}

struct Drink {
    var name: Drinks
    var quantity = 1
    
    func displayMessage() {
        switch name {
        case .thumbsup:
            print("Taste The Thunder")
        case .sprite:
            print("Born To Refresh")
        case .frooti:
            print("The Frooti Life")
        case .redbull:
            print("Red Bull gives you Wings")
        default:
            print("Just Chill")
        }
    }
}

extension Drink {
    init() {
          self.name = .thumbsup
          displayMessage()
    }
}


var order1 = Drink()

var order2 = Drink(name: .redbull, quantity: 4)
var order3 = Drink(name: .frooti, quantity: 2)


// MARK:- Referring to the current instance

struct Gamer {
    var name: String
    var twitchId: String
    
    init(name: String, twitchId: String){
        self.name = name
        self.twitchId = twitchId
    }
}


let gamer1 = Gamer(name: "Panda", twitchId: "panda001")
print(gamer1)


// MARK:- Lazy properties

struct LongProces {
    
    init() {
        print("Loading....")
    }
    
}

struct MyApp {
    var launch: Bool
    lazy var doOperation = LongProces()
    
    init(launch: Bool) {
        self.launch = launch
    }

}


var app1 = MyApp(launch: true)
app1.doOperation

// MARK:- Static properties and methods

enum SocialShare {
    static let whatsApp = "content.share/WhatsApp"
    static let twitter = "content.share/Twitter"
    static let linkedIn = "content.share/LinkedIn"
    static let instagram = "content.share/Instagram"
    static let facebook = "content.share/Facebook"
}


print(SocialShare.instagram)


// MARK:- Access control


struct BankAccount {
    var name: String
    private var cash = 3000
    init(name: String) {
        self.name = name
    }
    
    mutating func deposit(amount: Int) {
        cash += amount
        print("You have deposited \(amount) and your total balance is \(cash)")
    }
    
    mutating func withdraw(amount: Int) {
        
        if(cash > amount) {
            cash -= amount
            print(" \(amount) and your total balance is \(cash)")
        } else {
            print("In-Sufficient Funds")
        }
        
        
    }
}
var person = BankAccount(name: "Ranga")
person.deposit(amount: 20120)
person.withdraw(amount: 2000)


// MARK:- Summary

// You can create your own types using structures, which can have their own properties and methods.
// You can use stored properties or use computed properties to calculate values on the fly.
// If you want to change a property inside a method, you must mark it as mutating.
// Initializers are special methods that create structs. You get a memberwise initializer by default, but if you create your own you must give all properties a value.
// Use the self constant to refer to the current instance of a struct inside a method.
// The lazy keyword tells Swift to create properties only when they are first used.
// You can share properties and methods across all instances of a struct using the static keyword.
// Access control lets you restrict what code can use properties and methods.

