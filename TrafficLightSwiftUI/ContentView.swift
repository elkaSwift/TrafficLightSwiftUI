//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Елисей Мищенко on 15.02.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            ColorCircle(color: .red)
                .padding(.bottom, 20)
            ColorCircle(color: .yellow)
                .padding(.bottom, 20)
            ColorCircle(color: .green)
           
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
