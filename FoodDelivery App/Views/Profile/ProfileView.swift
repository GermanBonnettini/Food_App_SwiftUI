//
//  ProfileView.swift
//  FoodDelivery App
//
//  Created by H4MM3R-9 on 13/08/2025.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var profileModel = ProfileModel()
    
    var body: some View {
        
        NavigationView {
            Form {
                Section ("Personal Info") {
                    TextField("Nombre", text: $profileModel.firstName)
                    TextField("Apellido", text: $profileModel.secondName)
                    TextField("Email", text: $profileModel.email)
                        .keyboardType(.emailAddress)
                    
                    DatePicker("Fecha de Nacimiento", selection: $profileModel.birthday, displayedComponents: .date)
                }
                Section("Extra") {
                    Toggle("Celiaco/a", isOn: $profileModel.celiac)
                    Toggle("Servilletas extra", isOn: $profileModel.servilleta)
                }
                HStack {
                    Spacer()
                    Button {
                        profileModel.saveChanges()
                    } label: {
                        Text("Guardar")
                    }
                }
            }
            .navigationTitle("Profile")
        }
        .alert(item: $profileModel.alertItem) { alertItem in
            Alert(
                title: alertItem.title,
                message: alertItem.message,
                dismissButton: alertItem.dismissButton
            )
        }
        
    }
}


#Preview {
    ProfileView()
}
