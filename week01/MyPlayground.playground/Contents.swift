import UIKit

var greeting = "Hello, playground"

import Foundation
import PlaygroundSupport

func drawPyramid(rows: Int) {
    for i in 1...rows {
        let spaces = String(repeating: " ", count: rows - i)
        let stars = String(repeating: "* ", count: i)
        print(spaces + stars)
    }
}


let pyramidHeight = 5

PlaygroundPage.current.needsIndefiniteExecution = true

drawPyramid(rows: pyramidHeight)
