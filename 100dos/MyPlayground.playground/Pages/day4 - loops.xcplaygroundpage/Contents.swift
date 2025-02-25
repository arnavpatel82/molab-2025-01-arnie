// for loop
let count = 1...10
for number in count {
    print("Number is \(number)")
}

// while loop
var number = 1
while number <= 20 {
    print(number)
    number += 1
}

// exiting loop: use break as normal

//exiting multiple loops
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}

// skipping items: use continue as usual


