//
//  ContentView.swift
//  TrafficLight
//
//  Created by Алексей on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - @State private properties
    @State private var isPressed = false
    @State private var count = 3
    
    var body: some View {
        ZStack {
            background
            VStack {
                trafficLight
                    .padding(.bottom, 80)
                trafficLightButton
            }
        }
    }
    
    // MARK: - Setting Traffic Light
    private var trafficLight: some View {
        VStack {
            Circle()
                .foregroundColor(.red)
                .opacity(count == 0 ? 1.0 : 0.4)
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .padding(.bottom, 20)
            Circle()
                .foregroundColor(.yellow)
                .opacity(count == 1 ? 1.0 : 0.4)
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                .padding(.bottom, 20)
            Circle()
                .foregroundColor(.green)
                .opacity(count == 2 ? 1.0 : 0.4)
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
//                .shadow(radius: 10)
                .padding(.bottom, 20)
        }
    }
    
    // MARK: - Setting background color view
    private var background: some View {
        Color(.black)
            .ignoresSafeArea()
    }
    
    // MARK: - Setting button
    private var trafficLightButton: some View {
        Button(action: { tuppedButton() }) {
            Text("Start")
                .font(.title)
                .foregroundColor(isPressed ? .yellow : .white)
        }
        .frame(width: 200, height: 50)
        .background(isPressed ? .blue : .gray)
        .cornerRadius(15)
        .opacity(isPressed ? 1.0 : 0.8)
        .scaleEffect(isPressed ? 1.3 : 1.0)
        .pressEvents {
            withAnimation(.easeIn(duration: 0.2)) { isPressed = true }
        } onRelease: {
            withAnimation { isPressed = false }
        }
    }
    
    // MARK: - Private methods
    private func tuppedButton() {
        if count < 2 {
            count += 1
        } else {
            count = 0
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
