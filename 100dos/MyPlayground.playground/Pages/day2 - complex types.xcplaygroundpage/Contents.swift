// array
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]

// set
let colors = Set(["red", "green", "blue"])

// tuple
var name = (first: "Taylor", last: "Swift")
name.first

// dictionary
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]
heights["John Doe", default: 0.0]

// empty collection
var teams = [String: String]() //empty dict
teams["Paul"] = "Red"
var results = [Int]() //empty arr
var words = Set<String>() //empty set

// enums
enum Result {
    case success
    case failure
}
let result = Result.success
print(result)

// enum associated values
enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "football")




