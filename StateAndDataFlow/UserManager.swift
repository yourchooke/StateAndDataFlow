//
//  UserManager.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import Foundation
import Combine

final class UserManager: ObservableObject {
    static let shared = UserManager()
    @Published var user = User()
    
    var nameIsValid: Bool {
        user.name.count > 2
    }
    
    init() {}
    
    init(user: User) {
        self.user = user
    }
}

struct User: Codable {
    var name = ""
    var isRegistered = false
}
