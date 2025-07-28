//
//  CheckboxStyle.swift
//  FoodDelivery
//
//  Created by subin kurian on 23/07/25.
//

import SwiftUI
struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }) {
            HStack {
                Image(systemName: configuration.isOn ? "checkmark.square.fill" : "square")
                    .foregroundColor(configuration.isOn ? .orange : .gray)
                configuration.label
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}
