// arithmetic: + - / * %

// operator overloading
let doubleMeaning = 42 + 42 // 84
let fakers = "Fakers gonna "
let action = fakers + "fake" // string joining
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf // array concat

// compound assignment operators: += -= is supported

// comparison: == != < >=

// conditions
let firstCard = 11
let secondCard = 10
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

// and or: && ||

// ternary: ?
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

// switch statements
let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}

// range operators
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}

