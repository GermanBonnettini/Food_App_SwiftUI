//
//  AppetizerCell.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 15/08/2025.
//

import SwiftUI

struct AppetizerCell: View {
    
    var appetizer: Appetizer
    
    
    var body: some View {
        HStack {
            Image(appetizer.imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            
            VStack (alignment: .leading, spacing: 10){
//                Spacer()
                Text (appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text ("$\(appetizer.price, specifier: "%.2f")")
                    .font(.body)
                    .foregroundStyle(.secondary)
//                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    AppetizerCell(appetizer: Appetizer(id: 1, name: "Asado Argentino", description: "Porcion de Asado Argentino con Ensalada de Lechuga y tomate", price: 30.99, calories: 3000, carbs: 1000, protein: 300, imageName: "asado"))
}
