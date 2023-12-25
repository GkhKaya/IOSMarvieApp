//
//  SignUpViewViewModel.swift
//  IOSMarvieApp
//
//  Created by Gokhan Kaya on 25.12.2023.
//

import Foundation

final class SignUpViewViewModel : ObservableObject{
    @Published var emailValue: String = ""
    @Published var passwordValue: String = ""
    @Published var usernameValue: String = ""
    @Published var phoneNumberValue: String = ""
    

}
