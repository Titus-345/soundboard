//
//  ContentView.swift
//  soundboard
//
//  Created by Titus Stauffer on 2/20/26.
//

import SwiftUI
import AVFAudio


struct ContentView: View {
    @State private var sounds = ["schafe", "lowe", "schwein", "wolf", "rhino"]
    @State private var prevSoundName = ""
    @State private var soundName: String = "sound0"
    @State private var audioPlayer: AVAudioPlayer?

    var body: some View {
        VStack {
            Spacer()
            Button("Sheep") {
                play(soundNamed: "schafe")
            }
            .padding()
            Button("Lion") {
                play(soundNamed: "lowe")
            }
            .padding()
            Button("Pig") {
                play(soundNamed: "schwein")
            }
            .padding()
            Button("Wolf") {
                play(soundNamed: "wolf")
            }
            .padding()
            Button("Rhino") {
                play(soundNamed: "rhino")
            }
            .padding()
            Button("Random") {
                playRandom()
            }
            .padding()
            Spacer()
        }
        .buttonStyle(.glassProminent)
    }

    func playRandom() {
        // Choose a random sound different from the previous one
        var candidate = sounds[(Int.random(in: 0...sounds.count-1))]
            while candidate == prevSoundName {
                candidate = sounds[(Int.random(in: 0...sounds.count-1))]
            }
        prevSoundName = candidate
        play(soundNamed: candidate)
    }

    private func play(soundNamed name: String) {
        guard let soundFile = NSDataAsset(name: name) else {
            print("I cannot read the file called \(name)")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer?.play()
        } catch {
            print("ERROR: \(error.localizedDescription)!")
        }
    }
}

#Preview {
    ContentView()
}
