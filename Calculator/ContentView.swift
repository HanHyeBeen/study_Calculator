//
//  ContentView.swift
//  Calculator
//
//  Created by Enoch on 6/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var totalNumber: String = "0"
    
    private let btnData: [[String]] = [
        ["C", "+/-", "%", "÷"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
        ]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Text(totalNumber)
                        .padding()
                        .font(.system(size: 73))
                        .foregroundStyle(.white)
                }
                
                ForEach(btnData, id: \.self) { line in
                    HStack {
                        ForEach(line, id: \.self) { row in
                            Button {
                                if totalNumber == "0" {
                                    totalNumber = row
                                } else {
                                    totalNumber += row
                                }
                            } label: {
                                Text(row)
                                    .frame(width: 80, height: 80)
                                    .background(Color("NumberBtn"))
                                    .cornerRadius(40)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
