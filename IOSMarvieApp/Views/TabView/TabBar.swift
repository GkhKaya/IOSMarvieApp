//
//  TabView.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 26.12.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        GeometryReader{ geometry in
            
            TabView{
                SignInView()
                    .tabItem {
                        Image(systemName: "house.fill")
                    }
                
                OnboardView()
                    .tabItem {
                        Image(systemName: "heart.fill")
                    }
                
                Text("Chart")
                    .tabItem {
                        Image(systemName: "message.fill")
                    }
                
                Text("Chart")
                    .tabItem {
                        Image(systemName: "bell.fill")
                    }
                
            }.tint(.darkShamrock)
            
        }
    }
}

#Preview {
    TabBar()
}
