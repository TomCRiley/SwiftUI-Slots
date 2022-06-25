//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Tom Riley on 25/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    
    var body: some View {
        
        VStack {
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .padding()
            
            Spacer()
            
            Text(String(score))
            
            Spacer()
            
            HStack() {
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image("apple")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button {
        
            } label: {
                Text("Spin")
            }
            .padding(.horizontal, 25.0)
            .padding(.vertical, 6.0)
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))

            .cornerRadius(15)
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
