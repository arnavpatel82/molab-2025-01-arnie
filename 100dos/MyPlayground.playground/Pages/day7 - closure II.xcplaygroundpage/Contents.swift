// using closures as params
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// Using closures as parameters when they return values
func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}
travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// Shorthand parameter names
// the above line can be completely shortened to:
travel { place in
    return "I'm going to \(place) in my car"
}
// and even
travel {
    "I'm going to \($0) in my car"
}

// closures with multiple params
func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

// returning closures from values
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
let result = travel()
result("London")

// capturing values
func travel() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
result("London")
result("London")
result("London") //count will go up



