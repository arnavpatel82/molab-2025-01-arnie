// writing functions
func myFunction() {
    print('hi')
}
myFunction()

// accepting params
func square(number: Int) {
    print(number * number)
}
square(number: 8)

// returning values
func square(number: Int) -> Int {
    return number * number
}
let result = square(number: 8)

// param labels
func sayHello(to name: String) {
    print("Hello, \(name)!") // name is what it is called inside the func
}
sayHello(to: "Alice") // to is used outside

// no outside labels
func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet( "Bob")

// default param
func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}
greet("Taylor")
greet("Taylor", nicely: false)

//any number of param func
func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}
square(numbers: 1, 2, 3, 4, 5)

// writing throwing funcs
enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

// running throwing funcs
do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

// inout params
func doubleInPlace(number: inout Int) {
    number *= 2 //the param value itself can be changed (not a constant)
}
var myNum = 10
doubleInPlace(number: &myNum) // have to use the &
