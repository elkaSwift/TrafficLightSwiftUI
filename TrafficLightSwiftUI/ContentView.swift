//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Елисей Мищенко on 15.02.2022.
//

import SwiftUI
enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var currentLightning = CurrentLight.red
    @State private var redOpacity = 0.5
    @State private var yellowOpacity = 0.5
    @State private var greenOpacity = 0.5
    @State private var title = "Start"
    
    var body: some View {
        VStack {
            
            ColorCircle(color: .red, opacity: (redOpacity))
            Spacer()
//                .padding(.bottom, 20)
            ColorCircle(color: .yellow, opacity: (yellowOpacity))
            Spacer()
//                .padding(.bottom, 20)
            ColorCircle(color: .green, opacity: (greenOpacity))
            Spacer()
//                .padding(.bottom, 50)
            Button {
                title = "Next"
                switch currentLightning {
                case .red:
                    redOpacity = 1
                    yellowOpacity = 0.5
                    greenOpacity = 0.5
                    currentLightning = .yellow
                case .yellow:
                    redOpacity = 0.5
                    yellowOpacity = 1
                    greenOpacity = 0.5
                    currentLightning = .green
                case .green:
                    redOpacity = 0.5
                    yellowOpacity = 0.5
                    greenOpacity = 1
                    currentLightning = .red
                }
            } label: {
                Text(title)
                
            }
            .font(.system(size: 35))
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
