//
//  CircleGroupView.swift
//  RestartApp
//
//  Created by admin on 16/09/2024.
//

import SwiftUI

struct CircleGroupView: View {
    @State var ShappedColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShappedColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShappedColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
        }
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShappedColor: .white, ShapeOpacity: 0.2)
    }
    
}
