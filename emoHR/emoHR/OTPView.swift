//
//  OTPView.swift
//  emoHR
//
//  Created by Swapnil baranwal on 19/04/23.
//

import SwiftUI

struct OTPView: View {
    var OTP : String
    var mobileNumber:String
    let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
    @State private var enteredOTP = ""
    @State private var alert = ""
    @State private var text = ""
    @State private var showAlert = false
    @State private var showDetail = false
    
    @Environment(\.presentationMode) var presentationMode :Binding<PresentationMode>
    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "chevron.backward").onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }.padding()
                HStack{
                    Text("Enter Your Verification Code")
                        .font(.system(size: 37))
                        .fontWeight(.heavy)
                }
                .padding(EdgeInsets(top: 80, leading: 24, bottom:10, trailing: 24))
                HStack {
                    Text("We Have sent the code verification to your mobile number")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        
                    Spacer()
                }.padding(.leading,35)
                HStack{
                    Text("+ 91 \(mobileNumber) ")
                    Image(systemName: "pencil")
                    Spacer()
                }.padding()
                    
                TextField("0 0 0 0 ", text: $enteredOTP )
                    .padding(.leading,90)
                    .onChange(of: enteredOTP) { newValue in
                                        if newValue.count > 4 {
                                            enteredOTP = String(newValue.prefix(4))
                                        }
                                    }
                    .font(.system(size: 60))
                        .keyboardType(.phonePad)
                        .foregroundColor(Color.black)
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.07))
                        .padding()
                
                Button(action: {
                    if enteredOTP == OTP {
                        showDetail = true
                    }else{
                        text = "Happid"
                        alert = "Incorrect OTP"
                        showAlert = true
                    }
                }){
                Text("Submit")
                    .frame(width: 327.0, height: 60.57, alignment: .center)
                    .background(Color(red: 80/255, green: 70/255, blue: 187/255))
                    .foregroundColor(Color.white)
                }.padding(.bottom,80)
                    .fullScreenCover(isPresented: $showDetail) {
                        Profile1()
                    }
                    .alert(isPresented: $showAlert){
                        Alert(title: Text(text),
                              message: Text(alert),
                              dismissButton: .default(Text("ok")))
                    }
                
                Text("Don't receive OTP? ")
                    .foregroundColor(.black)
                + Text("Resend")
                    .foregroundColor(.orange)
                    .bold()
                Spacer()
            }.navigationBarHidden(true)
                
            
        }
    }
}

struct OTPView_Previews: PreviewProvider {
    static var previews: some View {
        OTPView(OTP: "", mobileNumber: "")
    }
}
