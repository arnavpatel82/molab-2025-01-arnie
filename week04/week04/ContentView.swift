//
//  ContentView.swift
//  week04
//
//  Created by Arnav Patel on 2/25/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ClockView()) {
                    Text("Show Clock")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.green.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                NavigationLink(destination: AudioView()) {
                    Text("Play Audio")
                        .font(.title2)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue.opacity(0.7))
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("Simple SwiftUI App")
        }
    }
}

#Preview {
    ContentView()
}
