//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    private var user = StorageManager.shared.fetchUser()
    
    var body: some Scene {
        WindowGroup {
           StarterVIew()
                .environmentObject(UserManager(user: user))
        }
    }
}
