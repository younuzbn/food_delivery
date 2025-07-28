import SwiftUI
//test
//git test
//branch one feature added
//updations one two
//this is coming from younus2
struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var showPassword=true
    @State private var isOn = false
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                VStack {
                    Color.black
                    .overlay(
                        VStack {
                           
                            Text("login in")
                                .foregroundStyle(.white)
                                .font(.title)
                                .bold()
                            Text("Please sign in to your existing account")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                            
                        }
                    )
                }
                Spacer()
                VStack {
                    
                    Color.white
                        .overlay(
                            //MARK: eh ehh eh eh
                            VStack {
                                HStack{
                                    Text("Email")
                                        .padding()
                                    Spacer()
                                        
                                }
                                inputBox(placeholder: "example@gmail.com", text: $email, isSecure: false)
                                
                                HStack{
                                    Text("Password")
                                        .padding()
                                    Spacer()
                                }
                                HStack{
                                    
                                    inputBox(placeholder: "* * * * * * * * * * * * * *", text: $password, isSecure: showPassword)
                                        .autocapitalization(.none)
                                           .disableAutocorrection(true)
                                    Spacer()
                                        .overlay(
                                            Button {
                                                       showPassword.toggle()
                                                   } label: {
                                                       Image(systemName: showPassword ? "eye.slash" : "eye")
                                                           .foregroundColor(.gray)

                                                           .padding(.trailing,50)
                                                       
                                                   }
                                            
//
                                            
                                        )
                                }
//                                   .padding()
                               
                                   
                                HStack{
                                    Toggle(isOn:$isOn){
                                        Text("Remember me ")
                                    }
                                .toggleStyle(CheckboxStyle())
                                .padding()
                                    Spacer()
                                    Text("Forgot Password").font(.system(size: 14))
                                        .foregroundStyle(.color)
                                }
                                CustomButton(text: "LOG IN")
                                HStack{
                                    Text("Don’t have an account?")
                                    Text("SIGN UP")
                                        .foregroundStyle(.color)
                                        .bold()
                                }
                                .padding()
                                Text("or")
                                    .padding()
                                HStack{
                                    Spacer()
                                    Button(action:{
                                        print("fb")
                                    }){
                                        Image("facebook")
                                    }
                                    Spacer()
                                    Button(action:{
                                        print("twitter")
                                    }){
                                        Image("twitter")
                                    }
                                    Spacer()
                                    Button(action:{
                                        print("apple")
                                    }){
                                        Image("apple")
                                    }
                                    Spacer()
                                }
                                .padding()
//                                Text("test")
//                                CustomButton(text: "hello")
//                                CustomButton(text: "hello 2")
                                //
                                //
                                
                                
                            }
                                .padding()
                        )
                    
                }
                .background(Color.white)
                .frame(width: .infinity, height: 600)
                .cornerRadius(40, corners: [.topLeft, .topRight])
            }
            .ignoresSafeArea(.all)
            
            
            
        }
    }
}
struct RoundedCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    
}

#Preview {
    LoginView()
} 


//ZStack {
//    Color.black
//        .ignoresSafeArea()
//    VStack {
//        VStack {
//            
//        
//            Text("Log in")
//                .foregroundStyle(.white)
//                .font(.title)
//                .bold()
//            Text("Please sign in to your existing account")
//                .foregroundStyle(.white)
//                .font(.subheadline)
//        }
//        .frame(maxWidth: .infinity)
//        
//        Spacer()
//        VStack {
//           
//            
//            Text("test")
//                .foregroundStyle(.black)
//            
//
//        }
//        .frame(width: .infinity, height: 600)
//        .cornerRadius(20)
//        .background(Color.white)
//    }
//    .frame(maxWidth: .infinity)
//}




