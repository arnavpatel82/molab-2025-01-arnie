// creating a class
class Dog {
    var name: String
    var breed: String
    init(name: String, breed: String) { //always need to do this for class (vs struct)
        self.name = name
        self.breed = breed
    }
}
let poppy = Dog(name: "Poppy", breed: "Poodle")

// class inheritancea
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

// overriding methods
class Dog {
    func makeNoise() {
        print("Woof!")
    }
}
class Poodle: Dog {
    override func makeNoise() {
        print("Yip!")
    }
}
let poodle = Poodle()
poodle.makeNoise() // will print "Yip!" and not "Woof"

// copying objects
class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
var singerCopy = singer
singerCopy.name = "Justin Bieber"
print(singer.name) // will still print 'taylor swift", would print "justin beiber" if it were a struct

// mutability
class Singer {
    var name = "Taylor Swift" // this must be let instead of var if you don't want it be mutable
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name) // will change to ed sheeran

