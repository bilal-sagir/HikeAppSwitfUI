//
//  CustomBackgroundView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            Color
                .gradGreen
                .clipShape(.rect(cornerRadii: RectangleCornerRadii(topLeading: 40,
                                                                   bottomLeading: 40,
                                                                   bottomTrailing: 40,
                                                                   topTrailing: 40)))
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
