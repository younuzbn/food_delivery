//
//  FoodDeliveryApp.swift
//  FoodDelivery
//
//  Created by younuzbn on 21/07/25.
//

import SwiftUI

@main
struct FoodDeliveryApp: App {
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct RootView: View {
    @State private var showSplash = true
    
    var body: some View {
        Group {
            if showSplash {
                SplashScreenView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showSplash = false
                            }
                        }
                    }
            } else {
                ContentView()
                    
            }
        }
    }
}
