//
//  CustomListRowView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 19.02.2024.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: - PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent {
            if rowContent != nil {
                Text(rowContent!)
                    .fontWeight(.heavy)
                .foregroundStyle(.primary)
            } else if rowLinkLabel != nil && rowLinkDestination != nil {
                Link(rowLinkLabel!,
                     destination: URL(string: rowLinkDestination!)!)
                .foregroundStyle(.pink)
                .fontWeight(.heavy)
            }
            else {
                EmptyView()
            }
        } label: {
            HStack {
                
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .pink, rowLinkLabel: "Google", rowLinkDestination: "https://google.com")
    }
    
}
