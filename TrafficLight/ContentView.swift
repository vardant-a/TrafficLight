//
//  ContentView.swift
//  TrafficLight
//
//  Created by Алексей on 08.09.2022.
//

import SwiftUI

struct ContentView: View {
    
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
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding(.bottom, 20)
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
                .padding(.bottom, 20)
            Circle()
                .foregroundColor(.green)
                .frame(width: 125, height: 125)
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 10)
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
        Button(action: { print("YES") }) {
            Text("Start")
                .font(.title)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 50)
        .background(.gray)
        .cornerRadius(15)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
