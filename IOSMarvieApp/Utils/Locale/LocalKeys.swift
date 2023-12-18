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
}
extension String{
    func locale() -> LocalizedStringKey{
        return  LocalizedStringKey(self)
    }
}
