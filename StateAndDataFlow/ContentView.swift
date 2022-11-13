//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var userManager: UserManager
    @StateObject private var timer = TimeCounter()
    var body: some View {
        VStack(spacing: 40) {
            Text("Hi, \(userManager.user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            ButtonView(
                title: timer.buttonTitle,
                color: .red,
                action: timer.startTimer
            )
            Spacer()
            ButtonView(
                title: "Logout",
                color: .blue) {
                    StorageManager.shared.logout(userManager: userManager)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

