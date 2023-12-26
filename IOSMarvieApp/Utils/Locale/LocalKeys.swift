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
        case createPassword = "createPassword"
        case repeatPassword  = "repeatPassword"
        case finish = "finish"
        case welcome = "welcome"
        case signInToContinue = "signInToContinue"
        case signIn = "signIn"
        case forgotPassword = "forgotPassword"
        case createAnAccount = "createAnAccount"
        case pleaseWritePassword = "pleaseWritePassword"
    }
}
extension String{
    func locale() -> LocalizedStringKey{
        return  LocalizedStringKey(self)
    }
}
