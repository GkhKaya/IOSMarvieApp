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
                ZStack {
                    VStack {
                        TabView {
                            ForEach(onBoardData[0...2]){item in
                                OnBoardViewItem(onboardModel: item)
                            }
                        }.tabViewStyle(PageTabViewStyle())
                            .frame(width: geomety.dw(width: 1),height: geomety.dh(height: 0.9))
                        NormalButtonWithIcon(ontap: {
                            vm.goToLoginPage = true
                        }, title: LocalKeys.Onboard.next.rawValue.locale(), iconName: "arrow.right").padding(.horizontal,100)
                        Spacer()
                    }.navigationDestination(isPresented: $vm.goToLoginPage){
                        SignInView().navigationBarBackButtonHidden(true)
                            .padding(.horizontal,ProjectPaddings.All.normal.rawValue)
                            .ignoresSafeArea()
                    }
                }.background(Color.boysenberryShadow)
            }
        }
    }
}

#Preview {
    OnboardView()
}


//.foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color.wash_me, Color.boysenberry_shadow]), startPoint: .leading, endPoint: .trailing))
