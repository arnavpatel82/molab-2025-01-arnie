//
//  RandomCanvasView.swift
//  week03
//
//

import SwiftUI

// Configuration constants
let animInterval = 0.1 // Update every 0.1 second
let gridSize = 12.0 // Grid cell size
let lineWidth = 5.0 // Stroke width
let colors: [Color] = [.red, .green, .blue, .yellow, .orange, .purple] // Random colors

// Stores the drawing state
var currentPosition = CGPoint.zero
var canvasSize: CGSize = .zero
struct PathData {
    var path: Path
    var color: Color
}
var paths: [PathData] = []

struct RandomCanvasView: View {
    var body: some View {
        TimelineView(.animation(minimumInterval: animInterval)) { _ in
            Canvas { context, size in
                canvasSize = CGSize(width: size.width / gridSize, height: size.width / gridSize)
                
                // Generate a new random slash
                let path = generateRandomSlash(currentPosition)
                let color = colors.randomElement() ?? .black
                paths.append(PathData(path: path, color: color))
                
                // Draw existing paths
                for p in paths {
                    let style = StrokeStyle(lineWidth: lineWidth, lineCap: .round)
                    context.stroke(p.path, with: .color(p.color), style: style)
                }
                
                // Move to the next position
                updatePosition()
            }
        }
    }
}

// Generates a random diagonal slash
func generateRandomSlash(_ position: CGPoint) -> Path {
    var path = Path()
    let x = position.x
    let y = position.y
    let xStep = canvasSize.width
    let yStep = canvasSize.height

    if Bool.random() {
        // Draw top-left to bottom-right
        path.move(to: CGPoint(x: x, y: y))
        path.addLine(to: CGPoint(x: x + xStep, y: y + yStep))
    } else {
        // Draw top-right to bottom-left
        path.move(to: CGPoint(x: x + xStep, y: y))
        path.addLine(to: CGPoint(x: x, y: y + yStep))
    }
    
    return path
}

// Updates the drawing position and resets if needed
func updatePosition() {
    currentPosition.x += canvasSize.width
    if currentPosition.x > canvasSize.width * gridSize {
        currentPosition.x = 0
        currentPosition.y += canvasSize.height
        if currentPosition.y > canvasSize.height * gridSize {
            currentPosition.y = 0
            paths = [] // Clear canvas and restart
        }
    }
}

#Preview {
    RandomCanvasView()
}
