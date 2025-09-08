//
//  Order.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 08/09/2025.
//

import SwiftUI

final class Order: ObservableObject {
    
    @Published var items: [Appetizer] = []
    
    var totalPrice: Double {
        items.reduce(0) {
            $0 + $1.price
        }
    }
}
