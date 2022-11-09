//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
           StarterVIew()
                .environmentObject(userManager)
        }
    }
}
