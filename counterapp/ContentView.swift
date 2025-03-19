//
//  ContentView.swift
//  testproject
//

import SwiftUI

struct ContentView: View {
    let title: String
    @State private var counter: Int = 0
    
    var body: some View {
        NavigationView {
            VStack {
                Text("You have pushed the button this many times:")
                    .padding(.bottom, 10)
                
                Text("\(counter)")
                    .font(.system(size: 36, weight: .bold, design: .default))
                    .padding(.bottom, 20)
                
                Spacer()
                
                HStack {
                    Spacer() // Pushes the button to the right
                    Button(action: incrementCounter) {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 50))
                    }
                    .padding(.bottom, 30) // Adjust padding to position the button as needed
                }

                HStack {
                    Spacer() // Pushes the button to the right
                    Button(action: decrementCounter) {
                        Image(systemName: "minus.circle.fill")
                            .font(.system(size: 50))
                    }
                    .padding(.bottom, 30) // Adjust padding to position the button as needed
                }

                HStack {
                    Spacer() // Pushes the button to the right
                    Button(action: resetCounter) {
                        Image(systemName: "arrow.counterclockwise.circle.fill")
                            .font(.system(size: 50))
                    }
                    .padding(.bottom, 30) // Adjust padding to position the button as needed
                }
            }
            .navigationTitle(title)
            .padding()
        }
    }
    
    private func incrementCounter() {
        counter += 1
    }
    private func decrementCounter() {
        counter -= 1
    }
    private func resetCounter() {
        counter = 0
    }
}

