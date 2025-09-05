//
//  NetworkManager.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 15/08/2025.
//

import Foundation
import Supabase

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func getAppetizers() async throws -> [Appetizer] {
        do {
            let response: [Appetizer] = try await supabase.from("Appetizers").select("*").execute().value
            return response
        } catch {
            if let supabaseError = error as? PostgrestError {
                
                switch supabaseError.code {
                case "invalid_url": throw APError.invalidURL
                case "invalid_response": throw APError.invalidResponse
                case "invalid_data": throw APError.invalidData
                default: throw APError.unableToComplete
                } }else {
                    throw APError.unableToComplete
                }
        }
    }
}


