//
//  CustomButton.swift
//  FoodDelivery
//
//  Created by subin kurian on 23/07/25.
//
import SwiftUI

struct CustomButton: View {
  let text: String

  var body: some View {
    Button(action: {
      
    }) {
      Text(text)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .padding()
            .background(.color)
            .cornerRadius(16)
            .padding(.horizontal, 24)
    }
  }
}
#Preview {
    CustomButton(text: "hello")
}
