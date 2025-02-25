// initialisers
struct User {
    var username: String
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
var user = User() // no longer accepts any paramaters upon init
user.username = "twostraws"

// refering to the current instance
struct Person {
    var name: String
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

// lazy properties
struct Person {
    var name: String
    lazy var familyTree = FamilyTree() // assuming FamilyTree() is a struct, it will only be generated if it is initialised
    init(name: String) {
        self.name = name
    }
}
var ed = Person(name: "Ed") //in this case it is not initialised

// static properties and methods
struct Student {
    static var classSize = 0 // in all instances
    var name: String
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
print(Student.classSize) // need to be called like so

// access control
struct Person {
    private var id: String
    init(id: String) {
        self.id = id
    }
    func identify() -> String { // only functions within the struct can access the private variable
        return "My social security number is \(id)"
    }
}


