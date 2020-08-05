import UIKit


// MARK:- For loops

let members = ["IronMan", "SpiderMan", "Captain America", "Thor", "Captain Marvel"]

for member in members {
    print("\(member) joined the Meeting")
}

for _ in members {
    print("You have a new member joined to the group")
}

// MARK:- While loops

var ticketsBooked = 0

while (ticketsBooked < 100) {
    ticketsBooked += 1
}

print("House Full")

// MARK:- Repeat loops

let numbers = [1, 2, 3, 4, 5]
var random: [Int]

repeat {
    random = numbers.shuffled()
} while random == numbers

// MARK:- Exiting loops

let secretKey = 9819
var status = true
var myKey: Int
repeat {
    myKey = Int.random(in: 1000..<10000)
    if secretKey == myKey {
        status = false
        print("Found Secrect key")
    }
} while status

// MARK:- Exiting multiple loops


outerloop: for _ in 0..<3 {
    for i in 1...10 {
        if i == 10 {
            print(i)
            break outerloop
        }
    }
}

// MARK:- Skipping items


var carsProduced = 0
repeat {
    carsProduced += 1
    if carsProduced % 2 == 0 {
        continue
    }
    print("Another car was built.")
} while carsProduced < 20

// MARK:- Inifinite loops


var counter = 1
repeat {
   print("Counting: \(counter)")
   counter += 2
} while counter != 10


// MARK:- Summary

//Loops let us repeat code until a condition is false.
//The most common loop is for, which assigns each item inside the loop to a temporary constant.
//If you don’t need the temporary constant that for loops give you, use an underscore instead so Swift can skip that work.
//There are while loops, which you provide with an explicit condition to check.
//Although they are similar to while loops, repeat loops always run the body of their loop at least once.
//You can exit a single loop using break, but if you have nested loops you need to use break followed by whatever label you placed before your outer loop.
//You can skip items in a loop using continue.
//Infinite loops don’t end until you ask them to, and are made using while true. Make sure you have a condition somewhere to end your infinite loops!


