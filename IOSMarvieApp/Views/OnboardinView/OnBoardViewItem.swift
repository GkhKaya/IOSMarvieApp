//
//  OnBoardViewItem.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 18.12.2023.
//

import SwiftUI

struct OnBoardViewItem: View {
    
    var onboardModel : OnboardModel
    var body: some View {
        GeometryReader{geometry in
            VStack{
                HStack {
                    Spacer()
                    ZStack {
                        Image(onboardModel.imageName).resizable().cornerRadius(ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.82),height: geometry.dh(height: 0.62)).blur(radius: 10)
                        Image(onboardModel.imageName).resizable().cornerRadius(ProjectRadius.normal.rawValue).frame(width: geometry.dw(width: 0.8),height: geometry.dh(height: 0.6))

                    }
                    Spacer()
                }
                Text(onboardModel.title)
                    .padding(.top,ProjectPaddings.Top.veryLarge.rawValue)
                    .modifier(BoldMediumTitle())
                    .multilineTextAlignment(.center)
                Text(onboardModel.description)
                    .multilineTextAlignment(.center)
                    .padding(.top,ProjectPaddings.Top.small.rawValue)
                    .modifier(MediumNormalTitle())
                    .foregroundStyle(.medidative)
            }
        }
    }
}

#Preview {
    OnBoardViewItem(onboardModel: onBoardModelData[0])
}
