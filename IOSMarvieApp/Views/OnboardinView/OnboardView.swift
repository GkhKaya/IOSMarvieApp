//
//  OnboardView.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 18.12.2023.
//

import SwiftUI

struct OnboardView: View {
    @ObservedObject var vm = OnboardViewModel()
    
    var onBoardData: [OnboardModel] = onBoardModelData
    
    var body: some View {
        NavigationStack {
            GeometryReader{geomety in
                VStack {
                    TabView {
                        ForEach(onBoardData[0...2]){item in
                                    OnBoardViewItem(onboardModel: item)
                        }
                    }.tabViewStyle(PageTabViewStyle())
                        .frame(width: geomety.dh(height: 0.5),height: geomety.dh(height: 0.9))
                    NormalButtonWithIcon(ontap: {
                        vm.goToLoginPage = true
                    }, title: "Next", iconName: "arrow.right")
                    Spacer()
                }.navigationDestination(isPresented: $vm.goToLoginPage){
                    SignInView().navigationBarBackButtonHidden(true)
                }
            }
        }
    }
}

#Preview {
    OnboardView()
}


//.foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.wash_me, Color.boysenberry_shadow]), startPoint: .leading, endPoint: .trailing))
