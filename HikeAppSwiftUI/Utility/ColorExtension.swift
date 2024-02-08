//
//  ColorExtension.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import Foundation
import SwiftUI

extension Color {
    static let customGreenLight = Color("ColorGreenLight")
    static let customGreenMedium = Color("ColorGreenMedium")
    static let customGreenDark = Color("ColorGreenDark")
    
    static let customGrayLight = Color("ColorGrayLight")
    static let customGrayMedium = Color("ColorGrayMedium")
    
    static let customIndigoLight = Color("ColorIndigoLight")
    static let customIndigoMedium = Color("ColorIndigoMedium")
    
    static let customSalmonLight = Color("ColorSalmonLight")
    
    static let gradGray = LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
    static let gradWhiteToGreen = LinearGradient(colors: [.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
    static let gradIndigoToSalmon = LinearGradient(colors: [.customIndigoMedium, .customSalmonLight], startPoint: .topLeading, endPoint: .bottomTrailing)
    static let gradGreen = LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
}


