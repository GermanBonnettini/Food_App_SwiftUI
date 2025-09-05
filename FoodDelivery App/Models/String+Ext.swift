//
//  String+Ext.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 05/09/2025.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        // A common regex pattern for email validation.
        // This pattern aims to cover most standard email formats.
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: self)
    }
}
