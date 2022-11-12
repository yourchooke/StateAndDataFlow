//
//  ButtonModifier.swift
//  StateAndDataFlow
//
//  Created by Olga Yurchuk on 12.11.2022.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4)
            )
    }
}

extension View {
    func buttonModify(_ color: Color) -> some View {
        ModifiedContent(
            content: self,
            modifier: ButtonModifier(color: color)
        )
    }
}
