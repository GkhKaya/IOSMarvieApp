//
//  LocalKeys.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 18.12.2023.
//

import Foundation
import SwiftUI

struct LocalKeys{
    enum Onboard:String{
        case joinOur = "joinOur"
        case itLooks = "itLooks"
        case next  = "next"
    }
    
    enum Auth:String{
        case hello = "hello"
        case letsIntroduce = "letsIntroduce"
        case pleaseWriteEmail = "pleaseWriteEmail"
        case pleaseWriteUsername = "pleaseWriteUsername"
    }
}
extension String{
    func locale() -> LocalizedStringKey{
        return  LocalizedStringKey(self)
    }
}
