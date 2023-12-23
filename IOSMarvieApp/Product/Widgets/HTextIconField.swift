//
//  HTextIconField.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 23.12.2023.
//

import SwiftUI

struct HTextIconField: View {
    var icBgColor: Color
    var icName : String
    var hintText : String
    var textBinding : Binding<String>
    
    var body: some View {
        GeometryReader{ geometry in
            HStack(alignment: .center){
                ZStack(alignment: .center){
                    RoundedRectangle(cornerRadius: ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.16),height: geometry.dh(height: 0.08)).foregroundColor(icBgColor).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                    Image(systemName: icName)
                        .padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                }
                TextField(hintText,text:textBinding)
                

            }
        }
    }
}

//#Preview {
//    HTextIconField(icBgColor: Color.darkShamrock, icName: "person", hintText: "Enter Email",textBinding: $vm.emailValue)
//}
