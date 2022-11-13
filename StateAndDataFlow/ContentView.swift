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
//    @ObservedObject var timer: TimeCounter
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
                action: timer.startTimer,
                title: timer.buttonTitle,
                color: .red
            )
            Spacer()
            ButtonView(
                action: StorageManager.shared.logout,
                title: "Logout",
                color: .blue
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserManager())
    }
}

