//
//  FontModifiers.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 20.12.2023.
//

import Foundation
import SwiftUI



struct LargeTitleModifier : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue", size: FontSizes.large.rawValue))
    }
}

struct ButtonTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Bold", size: FontSizes.normal.rawValue))
    }
}



struct BoldExtraLargeTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Bold", size: FontSizes.extraLarge.rawValue))
    }
}

struct BoldLargeTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Bold", size: FontSizes.large.rawValue))
    }
}

struct BoldNormalTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Bold", size: FontSizes.normal.rawValue))
    }
}

struct BoldMediumTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Bold", size: FontSizes.medium.rawValue))
    }
}



struct MediumLargeTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Regular", size: FontSizes.large.rawValue))
    }
}

struct MediumMediumTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Regular", size: FontSizes.medium.rawValue))
    }
}

struct MediumNormalTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Regular", size: FontSizes.normal.rawValue))
    }
}
    
struct MediumSmallTitle : ViewModifier{
    func body(content: Content) -> some View {
        return content.font(.custom("HelveticaNeue-Regular", size: FontSizes.small.rawValue))
    }
}

    
