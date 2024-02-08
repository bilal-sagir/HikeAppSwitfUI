//
//  GradientButtonStyle.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import Foundation
import SwiftUI

struct GradientButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                configuration.isPressed ? Color.gradReversedGray : Color.gradGray
            )
            .cornerRadius(40)
    }
}
