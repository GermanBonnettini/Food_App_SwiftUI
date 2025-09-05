//
//  Alert.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 26/08/2025.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    
}

struct AlertContext {
    
//    MARK: Network Alerts
    static let invalidURL = AlertItem(title: Text("Error de Configuracion"), message: Text("URL invalida. Revisa tu configuracion a Supabase"), dismissButton: .default(Text("OK")))
    
    static let invalidResponse = AlertItem(title: Text("Error del Servidor"), message: Text("Respuesta inválida. Intenta de nuevo más tarde"), dismissButton: .default(Text("OK")))
    
    static let invalidData = AlertItem(title: Text("Datos Inválidos"), message: Text("URL invalida. Revisa tu configuracion a Supabase"), dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Error de Conexión"), message: Text("No se pudo completar. Revisa tu internet y reintenta"), dismissButton: .default(Text("OK")))
    
//    MARK: Profile Alerts
    static let invalidForm = AlertItem(title: Text("Formulario invalido"), message: Text("Los campos fueron ingresados de forma incorreta "), dismissButton: .default(Text("OK")))
    
    static let invalidEmail = AlertItem(title: Text("Email invalido"), message: Text("Por favor Ingresa un email valido"), dismissButton: .default(Text("OK")))
    
    static func alert(for error: APError) -> AlertItem {
        switch error {
        case .invalidURL: return invalidURL
        case .invalidResponse: return invalidResponse
        case .invalidData: return invalidData
        case .unableToComplete: return unableToComplete
        }
    }
}

