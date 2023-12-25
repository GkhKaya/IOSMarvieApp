//
//  NormalButtonWithIcon.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 25.12.2023.
//

import SwiftUI

struct NormalButtonWithIcon: View {
    var ontap: () -> Void
    var title : LocalizedStringKey
    var iconName : String
    var body: some View {
        VStack{
            Button{
                ontap()
            }label: {
                HStack {
                    Spacer()
                    Text(title)
                    Image(systemName: iconName)
                    Spacer()
                }
                    .tint(.white)
                    .font(.system(size: FontSizes.normal.rawValue,weight: .semibold))
                    .padding(.all, ProjectPaddings.All.small.rawValue)
            }
            .buttonBorderShape(.roundedRectangle)
            .controlSize(.mini)
            .background(Color.darkShamrock)
            .cornerRadius(ProjectRadius.small.rawValue)
               
        }
    }
}
