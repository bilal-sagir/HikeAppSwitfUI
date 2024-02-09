//
//  CardView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 8.02.2024.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    @State private var imageNumber = 1
    @State private var randomNumber = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
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
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet, content: {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.fraction(0.3), .medium, .large]) // ToMe: .fraction is usefull
                        })
                    } //: HSTACK
                    
                    Text("Fun and enjoyable outdoor activity for friend and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                
                // MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER
                
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.gradGreen)
                        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25, x: 1, y: 3)
                }
                .buttonStyle(GradientButton())
                
            }//: VSTACK
        }//: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
