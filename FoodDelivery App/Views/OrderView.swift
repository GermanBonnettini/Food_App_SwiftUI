//
//  OrderView.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 13/08/2025.
//
import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach (order.items) { appetizer in
                            AppetizerCell(appetizer: appetizer)
                            
                        }
                        .onDelete (perform: deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        //                    isShowingDetails = false
                    } label: {
                        Text("$\(order.totalPrice, specifier:"%.2f" ) - Precio Total")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .frame(width: 250, height: 50)
                            .foregroundColor(.black)
                            .background(Color(.orange))
                            .clipShape(.buttonBorder)
                    }
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState()
                }
            }
            .navigationTitle("Orders")
            .padding()
        }
        
    }
    
    func deleteItem (at Offset: IndexSet) {
        order.items.remove(atOffsets: Offset)
    }
}

#Preview {
    OrderView()
}
