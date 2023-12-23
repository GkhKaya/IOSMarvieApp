//
//  SignInView.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 21.12.2023.
//

import SwiftUI

struct SignInView: View {
    @ObservedObject var vm = SignInViewViewModel()
    var body: some View {
        NavigationStack{
            GeometryReader{geometry in
                ZStack {
                    Spacer()
//                    Welcome part
                    VStack(alignment:.leading){
                        RoundedRectangle(cornerRadius: ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.16),height: geometry.dh(height: 0.08)).foregroundColor(.darkShamrock).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue).shadow(color: .darkShamrock, radius: 10,x: 0,y: 5)
                        
                        Text("Welcome!")
                            .modifier(BoldExtraLargeTitle())
                            .padding(.bottom,ProjectPaddings.Bottom.small.rawValue)
                        
                        
                        Text("Sign in to continue")
                            .modifier(MediumMediumTitle())
                            .foregroundColor(.medidative)
                            .padding(.bottom,ProjectPaddings.Bottom.veryLarge.rawValue)

                        
//                       Text Fields part
                        VStack(spacing: 20) {
                            HTextField(textBinding: $vm.emailValue, geometry: geometry,icBgColor: Color.macaw,icName: "person",hintText: "Please Write Email")
                            
                            HTextSecureField(textBinding: $vm.passwordValue, geometry: geometry, icBgColor: Color.khmerCurry, icName: "lock", hintText: "Please Enter Password")
                        }
                        
//                        Buttons part
                        SignInViewActionButtons()
                        
                        
                        Spacer()
                    }.padding(.all,ProjectPaddings.All.normal.rawValue)
                }.background(Color.boysenberryShadow)
            }
        }
    }
}



#Preview {
    SignInView()
}

struct HTextField: View {
    var textBinding : Binding<String>
    var geometry : GeometryProxy
    var icBgColor : Color
    var icName : String
    var hintText : String
    var body: some View {
        HStack(alignment: .center,spacing: 10){
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.14),height: geometry.dh(height: 0.08)).foregroundColor(icBgColor).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                Image(systemName: icName)
                    .padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
            }
            
            
            
            VStack {
                TextField(hintText,text:textBinding).padding(.bottom,ProjectPaddings.Bottom.small.rawValue)
                Divider()
                    .foregroundStyle(.ravenNight)
            }
            
        }
    }
}


struct HTextSecureField: View {
    var textBinding : Binding<String>
    var geometry : GeometryProxy
    var icBgColor : Color
    var icName : String
    var hintText : String
    var body: some View {
        HStack(alignment: .center,spacing: 10){
            ZStack(alignment: .center){
                RoundedRectangle(cornerRadius: ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.14),height: geometry.dh(height: 0.08)).foregroundColor(icBgColor).padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
                Image(systemName: icName)
                    .padding(.bottom,ProjectPaddings.Bottom.normal.rawValue)
            }
            
            
            
            VStack {
                SecureField(hintText,text:textBinding).padding(.bottom,ProjectPaddings.Bottom.small.rawValue)
                Divider()
                    .foregroundStyle(.ravenNight)
            }
            
        }
    }
}

struct SignInViewActionButtons: View {
    var body: some View {
        VStack{
            HStack {
                Spacer()
                NormalButtonWithIcon(ontap: {
                    
                }, title: "Sign In", iconName: "chevron.right")
                Spacer()
            }.padding(.top,ProjectPaddings.Top.large.rawValue)
            
            HStack {
                Spacer()
                NavigationLink(destination: OnboardView()) {
                    Text("Forgot Password")
                }.foregroundStyle(.medidative)
                Spacer()
            }.padding(.top,ProjectPaddings.Top.normal.rawValue)
            
            HStack{
                NavigationLink(destination: OnboardView()){
                    HStack {
                        Spacer()
                        Text("Create an Account")
                        Spacer()
                    }
                    .tint(.darkShamrock)
                    .font(.system(size: FontSizes.normal.rawValue,weight: .semibold))
                    .padding(.all, ProjectPaddings.All.small.rawValue)
                }
                .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                .background(Color.eden)
                .cornerRadius(ProjectRadius.small.rawValue)
            }.padding(.top,ProjectPaddings.Top.normal.rawValue)
        }
    }
}
