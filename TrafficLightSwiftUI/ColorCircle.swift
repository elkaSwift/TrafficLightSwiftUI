//
//  ColorCircle.swift
//  HelloWorld
//
//  Created by brubru on 14.02.2022.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var opacity: CGFloat = 0.5
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .black, opacity: 0.5)
    }
}
