import UIKit

let sz = CGSize(width: 200, height: 100)
let renderer = UIGraphicsImageRenderer(size: sz)

let image = renderer.image { context in
    let ctx = context.cgContext
    
    // Background color
    UIColor.lightGray.setFill()
    ctx.fill(CGRect(origin: .zero, size: sz))
    
    // Array of colors
    let colors: [UIColor] = [.red, .green, .yellow, .black]
    
    // Loop to draw squares
    let squareSize = CGSize(width: 50, height: 50)
    for (index, color) in colors.enumerated() {
        color.setFill()
        let rect = CGRect(x: CGFloat(index) * squareSize.width, y: 0, width: squareSize.width, height: squareSize.height)
        ctx.fill(rect)
    }
    
    // Stroke around the image
    UIColor.darkGray.setStroke()
    ctx.setLineWidth(2)
    ctx.stroke(renderer.format.bounds)
    
    // Inset box strokes
    var box = renderer.format.bounds
    for _ in 1...4 {
        box = box.insetBy(dx: 4, dy: 4)
        ctx.stroke(box)
    }
}

image
