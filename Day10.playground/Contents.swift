import UIKit

// MARK:- Class Vs Structs

//  Classes and structs give Swift developers the ability to create custom, complex types with properties and methods, but they have five important differences:


//  Classes do not come with synthesized memberwise initializers.
//  One class can be built upon (“inherit from”) another class, gaining its properties and methods.
//  Copies of structs are always unique, whereas copies of classes actually point to the same shared data.
//  Classes have deinitializers, which are methods that are called when an instance of the class is destroyed, but structs do not.
//  Variable properties in constant classes can be modified freely, but variable properties in constant structs cannot.

// MARK:- Class


enum CarBodyType {
    case sedan
    case compactSedan
    case truck
    case suv
    case hatchback
    case sports
    case van
    case coupe
    case convertible
    case stationWagon
    case other
}

class Car {
    var name: String
    var type: CarBodyType
    
    init(name: String,type: CarBodyType) {
        self.name = name
        self.type = type
    }
    
    
    func drive(){
        print("I drive make Noise......")
    }
    
}

let cyberTruck = Car(name: "Cyber Truck", type: .truck)

print("\(cyberTruck.name) is a type of \(cyberTruck.type)")

// Sometimes doing nothing is also great

class Empty {}
let empty = Empty()


// MARK:- Class inheritance

enum TeslaModel {
    case modelS
    case model3
    case modelX
    case modelY
    case cyberTruck
}

class Tesla: Car {
    var model: TeslaModel
    
    init(model: TeslaModel) {
        self.model = model
        let carName = "Tesla \(model)"
        super.init(name: carName.capitalized, type: .compactSedan)
    }
    
    // MARK:- Overriding Methods

    
    override func drive() {
        print("I drive Silently......")
    }
}

let myTesla = Tesla(model: .modelX)
print("\(myTesla.name)")


myTesla.drive()


// MARK:- Final Classes


final class RollsRoyce: Car{
    func describe() {
        print("Just for Royals")
    }
}

// MARK:- Copying objects

let myObject = Tesla(model: .modelS)

print("Original Class Object: \(myObject.type)")

let myObjectCopy = myObject

myObjectCopy.type = .truck

print("Class Object Copy: \(myObject.type)")

// Let's See With Structs


struct Person {
    var name = "Anonymous"
}


let myStructObject = Person()

print("Original Struct Object: \(myStructObject.name)")

let myStructObjectCopy = myObject

myStructObjectCopy.name = "Ranga"

print("Struct Object Copy: \(myStructObject.name)")



// MARK:- Deinitializers


class LifeCycle {
    
    init() {
        print("Born")
    }
    
    func living() {
        print("Living")
    }
    
    deinit {
        print("Died")
    }
    
}


for _ in 1...4 {
    let livingOrganism = LifeCycle()
    livingOrganism.living()
}


// How does  deinitializers work?

//  Behind the scenes Swift performs something called automatic reference counting, or ARC. ARC tracks how many copies of each class instance exists: every time you take a copy of a class instance Swift adds 1 to its reference count, and every time a copy is destroyed Swift subtracts 1 from its reference count. When the count reaches 0 it means no one refers to the class any more, and Swift will call its deinitializer and destroy the object.


// MARK:- Mutability

class SecrectAgent {
    var name: String
    let id: Int
    
    init(name: String,id: Int) {
        self.name = name
        self.id = id
    }
}


let secrectAgent1 = SecrectAgent(name: "James Bond", id: 007)
secrectAgent1.name = "Agent 007"
//secrectAgent1.id = 011 I can' Change this Property of the Class since its let(const)

// MARK:- Mutability Note

// One of the small but important differences between structs and classes is the way they handle mutability of properties:
//
// Variable classes can have variable properties changed
// Constant classes can have variable properties changed
// Variable structs can have variable properties changed
// Constant structs cannot have variable properties changed


// MARK:- Summary


//  Classes and structs are similar, in that they can both let you create your own types with properties and methods.
//  One class can inherit from another, and it gains all the properties and methods of the parent class. It’s common to talk about class hierarchies – one class based on another, which itself is based on another.
//  You can mark a class with the final keyword, which stops other classes from inheriting from it.
//  Method overriding lets a child class replace a method in its parent class with a new implementation.
//  When two variables point at the same class instance, they both point at the same piece of memory – changing one changes the other.
//  Classes can have a deinitializer, which is code that gets run when an instance of the class is destroyed.
//  Classes don’t enforce constants as strongly as structs – if a property is declared as a variable, it can be changed regardless of how the class instance was created.

