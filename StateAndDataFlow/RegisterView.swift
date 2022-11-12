//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @EnvironmentObject var userManager: UserManager

    
    var body: some View {
        VStack {
            HStack{
                TextField("Enter your name...", text: $userManager.user.name)
                .multilineTextAlignment(.center)
                .offset(x: 30, y: 0)
                Text("\(userManager.user.name.count)")
                    .foregroundColor(userManager.nameIsValid ? .green : .red)
                    .padding()
            }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("Ok")
                }
            }
            .disabled(!userManager.nameIsValid)
        }
    }
}

extension RegisterView {
    private func registerUser() {
        if !userManager.user.name.isEmpty {
            userManager.user.isRegistered.toggle()
            StorageManager.shared.saveUser(user: userManager.user)
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
