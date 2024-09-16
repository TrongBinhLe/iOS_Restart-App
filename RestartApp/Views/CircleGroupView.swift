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
    
    var body: some View {
        ZStack{
            Circle()
                .stroke(ShappedColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShappedColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260, height: 260, alignment: .center)
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
