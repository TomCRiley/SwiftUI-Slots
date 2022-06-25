//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Tom Riley on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1

    
    var body: some View {
        
        VStack {
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            
            Spacer()
            
            Text(String("Credits: \(score)"))
                .padding(.horizontal, 25.0)
                .padding(.vertical, 10.0)
                .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
            
            Spacer()
            
            HStack() {
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot2)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("fruit\(slot1)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .padding()
            
            Spacer()
            
            Button ("Spin") {
                // Randomize the numbers
                slot1 = Int.random(in: 1...3)
                slot2 = Int.random(in: 1...3)
                slot3 = Int.random(in: 1...3)
                
                // Update credits based on match or not
                if slot1 == slot2 && slot2 == slot3 {
                    // Match
                    score += 15
                }
                else {
                    score -= 5
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))

            .cornerRadius(25)
            .padding(.horizontal, 20)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            
            Spacer()

            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
