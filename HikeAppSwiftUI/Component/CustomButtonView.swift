//
//  CustomButtonView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            
            Circle()
                .fill(Color.gradWhiteToGreen)
            
            Circle()
                .stroke(Color.gradGray,
                        lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(Color.gradGray)
            
        }//: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
