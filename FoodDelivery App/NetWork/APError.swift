//
//  APError.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 19/08/2025.
//

import Foundation

enum APError: Error, LocalizedError{

    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
    
    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "URL inválida. Revisa la configuración de Supabase"
        case .invalidResponse:
            return "Respuesta del servidor inválida. Intenta de nuevo"
        case .invalidData:
            return "Datos recibidos inválidos. Contacta soporte"
        case .unableToComplete:
            return "No se pudo completar la solicitud. Revisa tu conexión"
        }
    }
    
}
