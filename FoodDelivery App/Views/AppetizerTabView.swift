//
//  ContentView.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 13/08/2025.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
       
        TabView {
            AppetizerListView()
                .tabItem {
                    Image(systemName: "house.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Home")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Profile")
                }
            OrderView()
                .tabItem {
                    Image(systemName: "bag.fill")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Order")
                }
        }
      
    }
}


#Preview {
    AppetizerTabView()
}


