//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by Olga Yurchuk on 12.11.2022.
//

import SwiftUI

final class StorageManager {
    
    @AppStorage("user") var savedUser: Data?

        
    static let shared = StorageManager()

    private init(){}
    
    func saveUser(user: User){
        savedUser = try? JSONEncoder().encode(user)
    }
    
    func fetchUser() -> User {
        guard let user = try? JSONDecoder().decode(User.self, from: savedUser ?? Data()) else { return User() }
        return user
    }
    
    func logout() -> Void {
        savedUser = nil
        UserManager.shared.user.isRegistered.toggle()
        UserManager.shared.user.name = ""
    }
}
