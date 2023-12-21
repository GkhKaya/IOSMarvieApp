//
//  OnboardViewModel.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 18.12.2023.
//

import Foundation

final class OnboardViewModel : ObservableObject{
    @Published var currentIndex : Int = 0
    @Published var isHomeRedirect : Bool = false
    @Published var goToLoginPage: Bool = false
    
    private func redirectToSignIn(){
        isHomeRedirect = true
    }
}
