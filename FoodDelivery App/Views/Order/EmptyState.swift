//
//  EmptyState.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 08/09/2025.
//

import SwiftUI

struct EmptyState: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
            VStack {
                Image(systemName: "newspaper.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Text ("No tenes ordenes")
                    .font(.title)
                    .italic()
                    .bold()
                    .padding()
            }
        }
    }
}

#Preview {
    EmptyState()
}
