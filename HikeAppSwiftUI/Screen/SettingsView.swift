//
//  SettingsView.swift
//  HikeAppSwiftUI
//
//  Created by Bilal on 9.02.2024.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    private let alternateAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"]
    
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    } //: VSTACK
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                } //: HSTACK
                .foregroundStyle(Color.gradGreen2)
                .padding(.top, 8)
                
                VStack(spacing: 16) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                } //: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER SECTION
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS
            Section {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button(action: {
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) { error in
                                    if error != nil {
                                        print("Failed requested to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                        print("succcess!")
                                    }
                                }
                            }, label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            })
                            .buttonStyle(.borderless)
                        }
                    }
                } //: SCROLL VIEW
                .padding(.top, 12)
                Text("Choose your favorite app icon from collection above.")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            } header: {
                Text("Alternate Icons")
            } //: SECTION
            .listRowSeparator(.hidden)

            // MARK: - SECTION: ABOUT
            Section {
                // Basic labeledContent
                //LabeledContent("Application", value: "Hike")
                
                CustomListRowView(rowLabel: "Application",
                                  rowIcon: "apps.iphone",
                                  rowContent: "Hike",
                                  rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatibility",
                                  rowIcon: "info.circle",
                                  rowContent: "iOS, iPadOS",
                                  rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology",
                                  rowIcon: "swift",
                                  rowContent: "Swift",
                                  rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version",
                                  rowIcon: "gear",
                                  rowContent: "1.0",
                                  rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer",
                                  rowIcon: "ellipsis.curlybraces",
                                  rowContent: "Bill S",
                                  rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Designer",
                                  rowIcon: "paintpalette",
                                  rowContent: "Bill",
                                  rowTintColor: .pink)
                
                CustomListRowView(rowLabel: "Website",
                                  rowIcon: "globe",
                                  rowTintColor: .indigo,
                                  rowLinkLabel: "google.com",
                                  rowLinkDestination: "https://google.com")

            } header: {
                Text("ABOUT THE APP")
            } footer: {
                HStack {
                    Spacer()
                    Text("Copywrite © all right reserved")
                    Spacer()
                } .padding(.vertical, 8)
            } //: SECTION
        } //: LIST
        
    }
}

#Preview {
    SettingsView()
}
