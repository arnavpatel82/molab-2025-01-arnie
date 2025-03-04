//
//  ClockView.swift
//  week04
//
//  Created by jht2 on 3/3/25.
//

import SwiftUI

// A view that displays the current time, updated every second.
struct ClockView: View {
    @State private var currentTime = Date()
    // Timer that fires every second.
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Current Time:")
                .font(.headline)
            Text("\(currentTime, formatter: dateFormatter)")
                .font(.largeTitle)
                .padding()
        }
        .onReceive(timer) { input in
            currentTime = input
        }
        .navigationTitle("Clock")
    }
}

private let dateFormatter: DateFormatter = {
  let formatter = DateFormatter()
  formatter.timeStyle = .medium
  return formatter
}()

#Preview {
  ClockView()
}
