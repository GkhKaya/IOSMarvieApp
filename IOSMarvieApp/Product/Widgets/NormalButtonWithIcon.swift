//
//  NormalButton.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 21.12.2023.
//

import Foundation
import SwiftUI

struct NormalButtonWithIcon: View {
    var ontap: () -> Void
    var title : String
    var iconName : String
    var body: some View {
        VStack{
            Button{
                ontap()
            }label: {
                HStack {
                    Text(title.locale())
                    Image(systemName: iconName)
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



#Preview {
    NormalButtonWithIcon(ontap: {
        
    }, title: "Next", iconName: "arrow_right")
}
