//
//  ContentView.swift
//  WeSplit
//
//  Created by Yomna on 10/1/25.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    @State private var tapCount = 0
    @State private var name = ""
    var body: some View {
        VStack {
            NavigationStack{
                Form {
                    Section {
                     
                        TextField("Enter your name", text: $name)
                        Text("Your name is \(name)")
                        
                    }
                    
                    Section {
                        Text("Person1")
                        Text("Person2")
                    }
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {
                            Text($0)
                        }
                    }

                    ForEach(0 ..< 100) {
                           Text("Row \($0)")
                       }
                }
                Button("Tap Count: \(tapCount)") {
                            tapCount += 1
                        }
            }
            .navigationTitle("navTitle")
            .navigationBarTitleDisplayMode(.inline)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
