//
//  FoodDelivery_AppApp.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 13/08/2025.
//

import SwiftUI
import Supabase

@main
struct FoodDelivery_AppApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView()  
                .environment(\.supabase, supabase)
                .environmentObject(order)
        }
    }
}

// Extensión para Environment
private struct SupabaseKey: EnvironmentKey {
    static let defaultValue: SupabaseClient = supabase
}

extension EnvironmentValues {
    var supabase: SupabaseClient {
        get { self[SupabaseKey.self] }
        set { self[SupabaseKey.self] = newValue }
    }
}
