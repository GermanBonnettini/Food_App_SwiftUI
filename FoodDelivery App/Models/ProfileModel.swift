//
//  ProfileModel.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 05/09/2025.
//

import SwiftUI

final class ProfileModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var secondName = ""
    @Published var email = ""
    @Published var birthday = Date()
    @Published var celiac = false
    @Published var servilleta = false
    
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        
        guard !firstName.isEmpty && !secondName.isEmpty && !email.isEmpty else {
            
            alertItem = AlertContext.invalidForm
            return false
        }
        
        guard email.isValidEmail else {
            
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges () {
        guard isValidForm else {
            return
        }
        
        print ("Se guardaron los cambios")
    }
}
