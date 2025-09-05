//
//  SupabaseClient.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 25/08/2025.
//

import Supabase
import Foundation

// MARK: - Supabase Client Global
let supabase: SupabaseClient = {
    guard
        let urlString = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_URL") as? String,
        let key = Bundle.main.object(forInfoDictionaryKey: "SUPABASE_KEY") as? String,
        let url = URL(string: urlString)
    else {
        fatalError("❌ No se pudo inicializar SupabaseClient. Revisa tu xcconfig o Info.plist")
    }

    return SupabaseClient(supabaseURL: url, supabaseKey: key)
}()


