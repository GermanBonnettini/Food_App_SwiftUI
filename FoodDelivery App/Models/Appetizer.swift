//
//  Appetizer.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 14/08/2025.
//

import Foundation


struct Appetizer: Codable, Identifiable {
    
    let id: Int
    let name: String
    let description: String
    let price: Double
    let calories: Int
    let carbs: Int
    let protein: Int
    let imageName: String
}


// Mark: DUMMY DATA

struct MockData {
    static let sampleAppetizer = Appetizer(id: 001,
                                           name: "Burguer Clasica Completa con Papas Frita",
                                           description: "Cheese Buerguer with lechuga y tomate",
                                           price: 8000,
                                           calories: 2000,
                                           carbs: 1500,
                                           protein: 250,
                                           imageName: "burguer")
    
    static let appetizersArray = [sampleTwo, sampleThree, sampleFour, sampleAppetizer, sampleAppetizer]
    
    static let sampleTwo = Appetizer(id: 002,
                                           name: "Burguer Clasica Completa con Papas Frita",
                                           description: "Cheese Buerguer with lechuga y tomate",
                                           price: 8000,
                                           calories: 2000,
                                           carbs: 1500,
                                           protein: 250,
                                           imageName: "burguer")
    static let sampleThree = Appetizer(id: 003,
                                           name: "Milanesa Napolitana",
                                           description: "Cheese Buerguer with lechuga y tomate",
                                           price: 8000,
                                           calories: 2000,
                                           carbs: 1500,
                                           protein: 250,
                                           imageName: "napo")
    static let sampleFour = Appetizer(id: 004,
                                           name: "Pizza Con Queso y Rucula",
                                           description: "Cheese Buerguer with lechuga y tomate",
                                           price: 8000,
                                           calories: 2000,
                                           carbs: 1500,
                                           protein: 250,
                                           imageName: "pizza")
}

