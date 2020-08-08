import UIKit

// MARK:- Using closures as parameters when they accept parameters

enum Platform {
    case android
    case iOS
    case both
    case web
}


func buildApps(platform: Platform,language: (String) -> Void) {
    switch platform {
    case .android:
        print("Platform: Android")
        print("Language: Java,Kotlin")
    case .iOS:
        print("Platform: iOS")
        print("Language: Swift,Objc")
    case .both:
        print("Platform: Android & iOS")
        print("Language: Dart, JavaScript, Native")
    case .web:
        print("Platform: Web")
        print("Language: JavaScript, Python")
    }
}

buildApps(platform: Platform.iOS) { (lang: String) in
    print("Language: \(lang)")
}



// MARK:- Using closures as parameters when they return values

func getMyOrder(itemId: Int, date: (String) -> String) {
    
    let time = date("Today")
    print("Your order id:\(itemId)" + time)
}

getMyOrder(itemId: 32145721) { (thatDate: String) -> String in
    return ", will be arriving \(thatDate)"
}

func reduce(_ values: [Int], using closure: (Int, Int) -> Int) -> Int {
    // start with a total equal to the first value
    var current = values[0]

    // loop over all the values in the array, counting from index 1 onwards
    for value in values[1...] {
        // call our closure with the current value and the array element, assigning its result to our current value
        current = closure(current, value)
    }

    // send back the final current value
    return current
}


let numbers = [10, 20, 30]

let sum = reduce(numbers) { (runningTotal: Int, next: Int) in
    runningTotal + next
}

let mul = reduce(numbers, using: *)

print(sum)
print(mul)

// MARK:- Shorthand parameter names

func weekendDestination(trip: (_ place: String) -> String){
    let message = trip("Ooty")
    print(message)
}

weekendDestination {
    "Let's go \($0)"
}


// MARK:- Closures with multiple parameters

func weekendDestinationM(trip: (_ place: String,_ occucation: String) -> String){
    let message = trip("Ooty","Birthday")
    print(message)
}

weekendDestinationM {
    "Let's go \($0) for this \($1)"
}

// MARK:- Returning closures from functions

func myLocation() -> (String) -> Void {
    return {
        print("Current Location: \($0)")
    }
}

let location1 = myLocation()
location1("London")

let location2: Void = myLocation()("Hyderabad")


// MARK:- Capturing values


func makeRandomNumberGenerator() -> () -> Int {
    var previousNumber = 0
    return {
        
        var newNumber: Int

        repeat {
            newNumber = Int.random(in: 1...3)
        } while newNumber == previousNumber

        previousNumber = newNumber
        return newNumber
    }
}


let generator = makeRandomNumberGenerator()

for _ in 1...10 {
    print(generator())
}


// MARK:- Summary

//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//If you use external values inside your closures, they will be captured so the closure can refer to them later.

