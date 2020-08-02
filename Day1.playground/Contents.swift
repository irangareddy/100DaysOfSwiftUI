import UIKit

// MARK:- Variables

// Create a new variable called 'greeting' and give a value 'Hello'
var greeting = "Hello"
// Update the value to 'Hi there 👋',
greeting = "Hi there 👋"

// What I understood is ?
// The Variables are created for temporary allocation of data i.e, we can update the data offen

// MARK:- Strings and Integers

var name =  "Ranga Reddy"
var age = 20
var salary = 1_000_000

// What I understood is ?
// Here we have three variables of two data types. When you create a variable Swift can figure out what type the variable is based on what kind of data you assign to it, and from then on that variable will always have that one specific type.

// MARK:- Multi-line strings

var mline1 = """
I am
tring to
write
multi-line Strings
"""

// with the above style my strings "\n" So, lets modify further

var mline2 = """
I am \
able to \
write \
multi-line Strings without \n's
"""

// What I Understood is ?
//Swift is very particular about how you write those quote marks: the opening and closing triple must be on their own line, but opening and closing line breaks won’t be included in your final string. To avoid that use \ at end of the line.

// MARK:- Doubles and Booleans

var myDouble = 01.07
var myBoolean = true // false

// What I Understood is ?
// Swift ang as different type of 'DataTypes' because it makes thing much more clear and understand the programmer what type of data they are working with.

// MARK:- String Interpolation

var dollarPerHour = 15
var totalWorkedHours = 20
var salaryNotification = "Your Salary of the week is $\(dollarPerHour*totalWorkedHours)"

// What I Understood is ?
// We need do some operation in the middle of the Strings like greeting a user, display their score etc. then use String Interpolation.

// MARK:- Constants

let generatedUserId = "N01S07RR2213"

// What I Understood is ?
// Use 'let' keyword when it doesn't need to change anymore


// MARK:- Type annotations

var username: String = "Jhon Doe"
var coins: Int  = 234
var health: Double = 71.32
var isActive: Bool = false

// From now 'username' will always be a 'String Type' because I explictly declared as a 'String' with help of Type Annotations

// What I Understood is ?
// When you want to use a variable or an constant to be a particular data type then 'Type Annotations' is the best way.


// MARK:- Summary

/*
1. You make variables using var and constants using let. It’s preferable to use constants as often as possible.
2. Strings start and end with double quotes, but if you want them to run across multiple lines you should use three sets of double quotes.
3. Integers hold whole numbers, doubles hold fractional numbers, and booleans hold true or false.
4. String interpolation allows you to create strings from other variables and constants, placing their values inside your string.
5. Swift uses type inference to assign each variable or constant a type, but you can provide explicit types if you want.
*/

