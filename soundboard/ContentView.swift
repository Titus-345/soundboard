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
    var body: some View {
        VStack{
            Spacer()
            Button("Sheep") {
                print("ONE")
            }
            .padding()
            Button("Lion") {
                print("TWO")
            }
            .padding()
            Button("Pig") {
                print("THREE")
            }
            .padding()
            Button("Wolf") {
                print("FOUR")
            }
            .padding()
            Button("Rhino") {
                print("FIVE")
            }
            .padding()
            Button("Random") {
                print("RAND")
            }
            .padding()
            Spacer()

        }
        .buttonStyle(.glassProminent)
    }
}

#Preview {
    ContentView()
}
