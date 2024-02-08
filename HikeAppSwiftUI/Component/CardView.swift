//
//  CardView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(Color.gradGray)
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    } //: HSTACK
                    
                    Text("Fun and enjoyable outdoor activity for friend and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                ZStack {
                    Circle()
                        .fill(Color.gradIndigoToSalmon)
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - FOOTER
            }//: VSTACK
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
