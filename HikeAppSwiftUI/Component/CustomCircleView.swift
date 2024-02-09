//
//  CustomCircleView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 9.02.2024.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimateGradient: Bool = false
    
    var body: some View {
        ZStack {
            
            Circle()
                .fill(LinearGradient(colors: [.customIndigoMedium, .customSalmonLight],
                                     startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                                     endPoint: isAnimateGradient ? .bottomTrailing : .topTrailing
                ))
                .onAppear {
                    withAnimation(.linear(duration: 4.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }
                }
            
            MotionAnimationView()
        } //: ZSTACK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
