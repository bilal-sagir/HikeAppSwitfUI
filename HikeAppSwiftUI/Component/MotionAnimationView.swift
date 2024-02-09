//
//  MotionAnimationView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 9.02.2024.
//

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - PROPERTIES
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    
    // MARK: - FUNCTIONS
    
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 4...80))
    }
    
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(x: randomCoordinate(), y: randomCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimating = true
                        }
                    })
            }
        }//: ZSTACK
        .frame(width: 256, height: 256)
        
        .mask(Circle())
        .drawingGroup() // Metal framework  for faster rendering
    }
}

#Preview {
    MotionAnimationView()
        .background {
            Circle()
                .fill(.teal)
        }
}
