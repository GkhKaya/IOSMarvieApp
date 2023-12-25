//
//  SignUpView.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 25.12.2023.
//

import SwiftUI

struct SignUpViewOne: View {
    @ObservedObject var vm = SignUpViewViewModel()
    var body: some View {
        NavigationStack{
            GeometryReader{geometry in
                ZStack {
                    Spacer()
                    VStack(alignment:.leading){
                        Spacer()
                        RoundedRectangle(cornerRadius: ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.16),height: geometry.dh(height: 0.08)).foregroundColor(.darkShamrock).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue).shadow(color: .darkShamrock, radius: 10,x: 0,y: 5).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                        
                        Text(LocalKeys.Auth.hello.rawValue.locale())
                            .modifier(BoldExtraLargeTitle())
                            .padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                        
                        Text(LocalKeys.Auth.letsIntroduce.rawValue.locale())
                            .modifier(MediumMediumTitle())
                            .foregroundColor(.medidative)
                            .padding(.bottom,ProjectPaddings.Bottom.veryLarge.rawValue)
                        
                        VStack(spacing: 20) {
                            HTextField(textBinding: $vm.emailValue, geometry: geometry,icBgColor: Color.macaw,icName: "envelope.fill",hintText: LocalKeys.Auth.pleaseWriteEmail.rawValue.locale())
                            
                            HTextField(textBinding: $vm.usernameValue, geometry: geometry,icBgColor: Color.macaw,icName: "person.fill",hintText: LocalKeys.Auth.pleaseWriteUsername.rawValue.locale())
                        }.padding(.bottom,ProjectPaddings.Bottom.veryLarge.rawValue)
                        
                        HStack(spacing: 20){
                            ZStack {
                                RoundedRectangle(cornerRadius: ProjectRadius.small.rawValue).frame(width: geometry.dw(width: 0.130),height: geometry.dh(height: 0.065)).foregroundStyle(.eden)
                                
                                Image(systemName: "arrow.left").foregroundStyle(.darkShamrock)
                            }
                            
                            NormalButtonWithIcon(ontap: {
                                
                            }, title: LocalKeys.Onboard.next.rawValue.locale(), iconName: "arrow.right")
                        }
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    }.padding(.all,ProjectPaddings.All.normal.rawValue)
                }.background(Color.boysenberryShadow)
            }
        }
    }
}

#Preview {
    SignUpViewOne()
}
