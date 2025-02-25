protocol Identifiable {
    var id: String { get set }
}
struct User: Identifiable {
    var id: String
}
func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}

// protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}
protocol NeedsTraining {
    func study()
}
protocol HasVacation {
    func takeVacation(days: Int)
}
protocol Employee: Payable, NeedsTraining, HasVacation { }

// extensions
extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()

// protocol extension
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])
extension Collection { //sets and arrays both conform to collecion protocol, which means we can now use summarise on pythons and beatles
    func summarize() {
        print("There are \(count) of us:")
        for name in self {
            print(name)
        }
    }
}

// protocol oriented programming
protocol Identifiable {
    var id: String { get set }
    func identify()
}
extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}
struct User: Identifiable {
    var id: String
}
let twostraws = User(id: "twostraws")
twostraws.identify()

