//
//  AppetizerListView.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 13/08/2025.
//

import SwiftUI

struct AppetizerListView: View {
    
    @Environment(\.supabase) var supabase
    
    @State private var alertItem: AlertItem?
    @State private var appetizers: [Appetizer] = []
    @State private var isLoading = true
    @State private var error: String?
    @State private var isShowingDetails = false
    @State private var selectedAppetizer: Appetizer?
    
    var body: some View {
        
        ZStack {
            NavigationView {
                List (appetizers) { appetizer in
                    AppetizerCell(appetizer: appetizer)
                        .onTapGesture {
                            selectedAppetizer = appetizer
                            isShowingDetails = true
                        }
                }
                .navigationTitle("Appetizers")
            }
            .onAppear {
                loadAppetizers()
            }
            .blur(radius: isShowingDetails ? 20 : 0) // 👈 BLUR dinámico
            
            // Overlay de detalle
            if isShowingDetails, let selected = selectedAppetizer {
                ZStack {
                    // Fondo semitransparente
                    Color.black.opacity(0.4)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation {
                                isShowingDetails = false
                            }
                        }
                    
                    // Vista de detalles en primer plano
                    AppetizerDetailView(
                        appetizer: selected,
                        isShowingDetails: $isShowingDetails
                    )
                    .transition(.scale) // animación de aparición
                    .zIndex(1) // asegurar que esté arriba
                }
            }
            
            // Loader
            if isLoading {
                ProgressView("Cargando...")
            }
        }
        .alert(item: $alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
    }
    
    
    private func loadAppetizers() {
        Task {
            do {
                appetizers = try await NetworkManager.shared.getAppetizers()
                isLoading = false
            } catch let error as APError {
                alertItem = AlertContext.alert(for: error)
                isLoading = false
            } catch {
                alertItem = AlertItem(            // Error Generico
                    title: Text("Error Desconocido"),
                    message: Text(error.localizedDescription),
                    dismissButton: .default(Text("OK"))
                )
                isLoading = false
            }
        }
        
    }
}
