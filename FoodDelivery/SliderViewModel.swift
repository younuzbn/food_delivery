import Foundation
import SwiftUI

class SliderViewModel: ObservableObject {
    
    @Published var sliders: [SliderModel] = [
        
        SliderModel(imageName: "sliderimage1", title: "All your favorites", description: "Get all your loved foods in one once place, you just place the order we do the rest"),
        SliderModel(imageName: "sliderimage2", title: "Fast Delivery", description: "Get all your loved foods in one once place, you just place the orer we do the rest"),
        SliderModel(imageName: "sliderimage3", title: "Order from choosen chef", description: "Get all your loved foods in one once place, you just place the orer we do the rest"),
        SliderModel(imageName: "sliderimage4", title: "Free delivery offers", description: "Get all your loved foods in one once place, you just place the orer we do the rest")
    ]
//    @Published var showPassword=true
//    func eyeToggle()->Bool {
//        showPassword.toggle()
//        print("showPassword is now:", showPassword)
//        return showPassword
//        
//    }
}
//private func togglePasswordVisibility() {
//        withAnimation {
//            showPassword.toggle()
//        }
//    }
   

