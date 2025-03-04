// handling missing data
var age: Int? = nil
age = 38

// unwrapping optionals
if let unwrapped = age {
    print("\(unwrapped.count) age")
} else {
    print("Missing age.")
}

// unwrapping with guards
func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    print("Hello, \(unwrapped)!")
}

// force unwrapping
let str = "5"
let num = Int(str) // this will be an optional int (int?)
let num = Int(str)! // now it is no longer an int?

// implicity unwrapped optionals
let age: Int! = nil

// nil coalescing
func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}
let user = username(for: 15) ?? "Anonymous"

// optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()

// optional try
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
try! checkPassword("sekrit")
print("OK!")

// failable initialiser
struct Person {
    var id: String
    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

// typecasting
class Animal { }
class Fish: Animal { }
class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
let pets = [Fish(), Dog(), Fish(), Dog()]
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}

