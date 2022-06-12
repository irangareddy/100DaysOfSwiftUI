import UIKit

// MARK:- Writing functions


func getQuoteOfDay() {
    print("Dreams will get you nowhere, a good kick in the pants will take you a long way.")
}

getQuoteOfDay()


// MARK:- Accepting parameters


func kFormatter(value: Int){
    if (value > 1000) {
        let kValue = value / 1000
        print("\(kValue)k")
    } else {
        print("Value should be greaterthan 1000")
    }
    
}

kFormatter(value: 12398)
kFormatter(value: 233)


// MARK:- Returning Values


func kSFormatter(value: Int) -> String {
 (value > 1000) ? "\(value / 1000)k": "Value should be greaterthan 1000"
}

kSFormatter(value: 46577)
kSFormatter(value: 56)


func getBook() -> (title: String,authour: String, pageCount: Int) {
    (title: "I never wrote a Book",authour: "Ranga",pageCount: 227)
}

let book = getBook()
print("\(book.title) written by \(book.authour) has \(book.pageCount) Pages")


// MARK:- Parameter labels

enum Timings {
    case morning
    case afternoon
    case evening
    case casual
}

func greet(to person: String,at time: Timings) -> String{
    
    var message: String
    
    switch time {
    case .morning:
        message = "Good Morning,\(person)"
    case .afternoon:
        message = "Good Afternoon,\(person)"
    case .evening:
        message = "Good Evening,\(person)"
    default:
        message = "Happy Day,\(person)"
    }
   return message
}

greet(to: "Ranga", at: Timings.evening)

// MARK:- Omitting parameter labels

func getFruit(_ name: String) {
    print("getting.......\(name)")
}

getFruit("Banana")

// MARK:- Default parameters

func addTask(_ title: String, isDone: Bool = false) -> String {
    isDone ? "Great you are maintaing good Progress" : """
    Added "\(title)" to the tasks
    """
}

print(addTask("Buy new books"))

// MARK:- Variadic functions

print("Hi,there","My","name","is","Ranga")

func openFile(_ name: String...) {
    for item in name {
        print("opening...\(item)")
    }
}

func openInt(_ name: Int...) {
    for item in name {
        print("opening...\(item)")
    }
}


openFile("Resume.pdf","Profile.jpg","Office.doc")
openInt(1,2,3,43,4,3)


// MARK:- Writing throwing functions

enum PasswordStrength: Error {
    case tooWeak
    case weak
}


func checkPwdStrength(_ password: String) throws {

    
    switch password.count {
    case 1...4:
        throw PasswordStrength.tooWeak
    case 5..<8:
        throw PasswordStrength.weak
    default:
        print("PasswordStrength: HIGH")
    }
    
}

// MARK:- Running throwing functions


do {
    try checkPwdStrength("cool")
} catch {
    print("PasswordStrength: LOW")
}

// MARK:- inout parameters

var age = 20

func addOneEveryYear(number: inout Int) {
    number += 1
}

addOneEveryYear(number: &age)

// Summary

//Functions let us re-use code without repeating ourselves.
//Functions can accept parameters – just tell Swift the type of each parameter.
//Functions can return values, and again you just specify what type will be sent back. Use tuples if you want to return several things.
//You can use different names for parameters externally and internally, or omit the external name entirely.
//Parameters can have default values, which helps you write less code when specific values are common.
//Variadic functions accept zero or more of a specific parameter, and Swift converts the input to an array.
//Functions can throw errors, but you must call them using try and handle errors using catch.
//You can use inout to change variables inside a function, but it’s usually better to return a new value.
