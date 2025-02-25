// basic closures
let drive = {
    print("I'm driving in my car")
}
driving()

// params in closures
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving("Paris")

// returning values from closures
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")

//closures as params
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: drive)
travel {
    print("I'm driving in my car") //travel can also be called like this (trailing closuring syntax)
}

//
