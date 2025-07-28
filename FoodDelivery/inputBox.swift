//
//  inputStyle.swift
//  FoodDelivery
//
//  Created by subin kurian on 23/07/25.
//

import SwiftUI

struct inputBox: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {

                Text(placeholder)
                    .foregroundColor(.gray)
                    .padding(.leading, 16)
            }

            Group {
                if isSecure {
                    SecureField("", text: $text)
                } else {
                    TextField("", text: $text)
                }
            }
            .padding(.leading, 16)
            .frame(height: 50)
            .background(Color.blue.opacity(0.1))
            .cornerRadius(10)
        }
    }

}

//#Preview {
//     inputStyle(placeholder: "Email", text: $0)
//    
//}
//
