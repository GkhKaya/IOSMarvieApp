//
//  OnboardModel.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 18.12.2023.
//

import Foundation
import SwiftUI

struct OnboardModel : Identifiable{
    var id: UUID = UUID()
    let imageName : String
    let title: LocalizedStringKey
    let description : LocalizedStringKey
    
}

let onBoardModelData : [OnboardModel] = [
    OnboardModel(imageName: ImageItems.CardImages.cardImageOne.rawValue, title: LocalKeys.Onboard.joinOur.rawValue.locale(), description: LocalKeys.Onboard.itLooks.rawValue.locale()),
    OnboardModel(imageName: ImageItems.CardImages.cardImageTwo.rawValue, title: LocalKeys.Onboard.joinOur.rawValue.locale(), description: LocalKeys.Onboard.itLooks.rawValue.locale()),
    OnboardModel(imageName: ImageItems.CardImages.cardImageThree.rawValue, title: LocalKeys.Onboard.joinOur.rawValue.locale(), description: LocalKeys.Onboard.itLooks.rawValue.locale()),
]
