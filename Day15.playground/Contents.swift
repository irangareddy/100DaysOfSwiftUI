import UIKit

// MARK:- Properties

struct Person {
    var clothes: String {
//        before Changing
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }
//        after Changing
        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    
    var age: Int
    var ageInDogYears: Int {
        get {
            return age * 7
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylor = Person(clothes: "T-shirts", age: 20)
taylor.clothes = "short skirts"

print(taylor.ageInDogYears)


// MARK:- Static properties and methods

struct Constants {
    static let screenWidth = 414
    static let screenHeight = 896
}

print(Constants.screenWidth)


// MARK:- Access Control

//  Public: this means everyone can read and write the property.(public)

//  Internal: this means only your Swift code can read and write the property. If you ship your code as a framework for others to use, they won’t be able to read the property.(internal)

//  File Private: this means that only Swift code in the same file as the type can read and write the property.(fileprivate)

//  Private: this is the most restrictive option, and means the property is available only inside methods that belong to the type, or its extensions.(private)


// MARK:- Polymorphism

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}


var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]


//for album in allAlbums {
//    print(album.getPerformance())
//}

// MARK:- Converting types with typecasting


for album in allAlbums {
    
    if let sAlbum = album as? StudioAlbum {
        print(sAlbum.studio)
    }else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
    
    
}



for album in allAlbums as? [StudioAlbum]  ?? [StudioAlbum]() {
    print(album.studio)
}


let number = 5
let text = String(number)
print(text)


// MARK:- Closures


let vw = UIView()

UIView.animate(withDuration: 0.5, animations: {
    vw.alpha = 0
})

UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
