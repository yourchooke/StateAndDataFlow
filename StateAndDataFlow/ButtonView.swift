//
//  ButtonView.swift
//  StateAndDataFlow
//
//  Created by Olga Yurchuk on 13.11.2022.
//

import SwiftUI

struct ButtonView: View {
    let title: String
    let color: Color
    let action: () -> Void
    
    var body: some View {
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .buttonModify(color)
            
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Action", color: .red, action: {})
    }
}
