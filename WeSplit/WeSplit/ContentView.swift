//
//  ContentView.swift
//  WeSplit
//
//  Created by Yomna on 10/2/25.
//

import SwiftUI

struct ContentView: View {
    @FocusState private var amountIsFocused: Bool
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 0
    let tipPercentages = [10, 15, 20, 25, 0]
    var totalPerPerson: Double{
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = checkAmount + tipValue
        let amountPerPerson = grandTotal / peopleCount

        return amountPerPerson
    }
    
    var body: some View {
        VStack {
           
            NavigationStack{
                Form {
                    Section{
                        TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                            .keyboardType(.decimalPad).focused($amountIsFocused)
                        
                        Picker("Number of people", selection: $numberOfPeople) {
                            ForEach(2..<100) {
                                Text("\($0) people")
                            }
                        }
                    }
                    
                    Section("How much tip would you like to leave?"){
                        
                        Picker("Tip percentage", selection: $tipPercentage) {
                            ForEach(tipPercentages, id: \.self) {
                                Text($0, format: .percent)
                            }
                        }.pickerStyle(.segmented)
                    }
                    Section{
                        Text(totalPerPerson, format:
                                .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    }
                }.navigationTitle("WeSplit")
                    .toolbar {
                        if amountIsFocused {
                            Button("Done") {
                                amountIsFocused = false
                            }
                        }
                    }
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
