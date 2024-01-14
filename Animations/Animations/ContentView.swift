//
//  ContentView.swift
//  Animations
//
//  Created by Briana Bayne on 1/14/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0
    
    var body: some View {
        
        Button("Tap Me") {
            //            animationAmount += 1
        }
        .padding(50)
        .background(.indigo)
        .foregroundColor(.white)
        .clipShape(.buttonBorder)
        //        .scaleEffect(animationAmount)
        //        .blur(radius: (animationAmount - 1) * 3)
        .overlay(
            Circle()
                .stroke(.indigo)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                    .repeatForever( autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }
    
}

#Preview {
    ContentView()
}


