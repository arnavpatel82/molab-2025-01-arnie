import SwiftUI
import AVFoundation

@main
struct SimpleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

// The main content view with two navigation links.


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

// A view that plays/pauses an audio file.
struct AudioView: View {
    @State private var audioPlayer: AVAudioPlayer?
    @State private var isPlaying = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button(action: {
                // Toggle play/pause
                if isPlaying {
                    audioPlayer?.pause()
                    isPlaying = false
                } else {
                    // Initialize audioPlayer if needed
                    if audioPlayer == nil {
                        if let url = Bundle.main.url(forResource: "example", withExtension: "mp3") {
                            do {
                                audioPlayer = try AVAudioPlayer(contentsOf: url)
                                audioPlayer?.prepareToPlay()
                            } catch {
                                print("Error loading audio file: \(error)")
                            }
                        } else {
                            print("Audio file not found")
                        }
                    }
                    audioPlayer?.play()
                    isPlaying = true
                }
            }) {
                Text(isPlaying ? "Pause Audio" : "Play Audio")
                    .font(.title2)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(isPlaying ? Color.red.opacity(0.7) : Color.blue.opacity(0.7))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("Audio")
    }
}
