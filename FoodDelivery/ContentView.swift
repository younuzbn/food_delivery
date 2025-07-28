//
//  ContentView.swift
//  FoodDelivery
//
//  Created by younuzbn on 21/07/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SliderViewModel()
    @State private var currentIndex = 0
    @State private var onboardingFinished = false
    @State private var buttonText = "Next"
    var body: some View {
        if onboardingFinished {
            LoginView()
        } else {
            VStack {
                Spacer()
                Image(viewModel.sliders[currentIndex].imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 240, height: 292)
                    .cornerRadius(12)
                Spacer()
                Text(viewModel.sliders[currentIndex].title)
                    .font(.system(size: 28, weight: .bold))
                    .foregroundColor(Color(.black))
                    .padding(.bottom, 8)
                Text(viewModel.sliders[currentIndex].description)
                    .font(.system(size: 16))
                    .foregroundColor(Color(.systemGray))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 32)
                HStack(spacing: 12) {
                    ForEach(0..<viewModel.sliders.count, id: \ .self) { index in
                        Circle()
                            .fill(index == currentIndex ? Color.orange : Color.orange.opacity(0.2))
                            .frame(width: 12, height: 12)
                    }
                }
                .padding(.vertical, 24)
                Button(action: {
                    if currentIndex < viewModel.sliders.count - 1 {
                        currentIndex += 1
                    } else {
                        onboardingFinished = true
                    }
                }) {
                    Text(currentIndex == viewModel.sliders.count - 1 ? "GET STARTED" : "NEXT")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(16)
                        .padding(.horizontal, 24)
                }
                Button(action: {
                    onboardingFinished = true
                }) {
                    Text(currentIndex == viewModel.sliders.count - 1 ? "" : "Skip")
                        .font(.subheadline)
                        .foregroundColor(Color(.systemGray))
                        .padding(.top, 8)
                }
                Spacer(minLength: 24)
            }
            .background(Color.white)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
