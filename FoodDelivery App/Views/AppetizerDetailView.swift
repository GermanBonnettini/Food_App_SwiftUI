//
//  AppetizerDetailView.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 27/08/2025.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetails: Bool
    
    var body: some View {
        
        VStack {
            Image( appetizer.imageName )
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame( height: 250)
            
            VStack {
                Text( appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding()
                Text( appetizer.description )
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            
            HStack (spacing: 43){
                
                VStack (spacing: 10){
                    Text ("Protein")
                    Text (String(appetizer.protein))
                }
                
                VStack(spacing: 10) {
                    Text ("Carbs")
                    Text (String(appetizer.carbs))
                }
                
                VStack(spacing: 10) {
                    Text ("Calories")
                    Text (String(appetizer.calories))
                }
                
            }
            .padding(15)
            
            Button {
                isShowingDetails = false
            } label: {
                Text("$\(appetizer.price, specifier: "%.2f")")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 250, height: 50)
                    .foregroundColor(.black)
                    .background(Color(.orange))
                    .clipShape(.buttonBorder)
            }
            .padding(33)
            
        }
        .frame(width: 320, height: 630)
        .background(Color(.systemBackground))
        .cornerRadius(20)
        .shadow(radius: 30)
        .overlay(alignment: .topTrailing, content: { Button{
            isShowingDetails = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 33, height: 33)
                    .foregroundStyle(Color(.orange))
                    .padding()
                Image(systemName: "xmark")
                    .frame(width: 20, height: 20)
                    .foregroundStyle(Color(.black))
            }
        }})
       
    }
    
}

#Preview {
    AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetails: .constant(true))
}
