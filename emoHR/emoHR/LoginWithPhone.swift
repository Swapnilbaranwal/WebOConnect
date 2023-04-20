//
//  LoginWithPhone.swift
//  emoHR
//
//  Created by Swapnil baranwal on 19/04/23.
//

import SwiftUI
struct LoginWithPhone: View {
    @State private var mobileNumber = ""
    @State private var OTP = ""
    @State private var showAlert = false
    @State private var showingOTPPopup = false
    @State private var alert = ""
    @State private var text = ""
    @State private var primary = ""
    @State private var secondary = ""
    @State private var showDetail = false
    
    @Environment(\.presentationMode) var presentationMode :Binding<PresentationMode>
    var body: some View {
        let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
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
                    Text("Enter Your Mobile \nNumber")
                        .font(.system(size: 37))
                        .fontWeight(.heavy)
                }
                .padding(EdgeInsets(top: 30, leading: 24, bottom:10, trailing: 24))
                HStack {
                    Text("Hello, Welcome Back to Our Account")
                        .font(.system(size: 16))
                        
                    Spacer()
                }.padding(.leading,35)
                HStack{
                    HStack{
                        Image("india")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 35, height: 25, alignment: .center)
                        Text("+91")
                        
                    }.padding()
                        .background(Color(red: 255/255, green: 127/255, blue:93/255).opacity(0.05))
                        .cornerRadius(10)
                    
                    TextField("0 0 0 0 0 0 0 0 0 0", text: $mobileNumber)
                        .keyboardType(.phonePad)
                        .onChange(of: mobileNumber) { newValue in
                                            if newValue.count > 10 {
                                                mobileNumber = String(newValue.prefix(10))
                                            }
                                        }
                        .foregroundColor(Color.black)
                        .padding()
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.05))
                        .cornerRadius(10)
                }.padding(EdgeInsets(top: 90, leading: 24, bottom: 20, trailing: 24))
                Button(action: {
                    if mobileNumber == "" || mobileNumber.count < 10{
                        text = "Happid"
                        alert = "Please enter Mobile number"
                        primary = "OK"
                        secondary = "Cancel"
                        showAlert = true
                        
                    }
                    else{
                    OTP = String(mobileNumber.prefix(2)) + String(mobileNumber.suffix(2))
                        text = "Your confirmation code is Below — enter it  and we'll help you get signed in."
                        alert = OTP
                        primary = "Ok"
                        secondary = "Cancel"
                    showAlert = true
                    }
                })
                {
                Text("Request OTP")
                    .frame(width: 327.0, height: 60.57, alignment: .center)
                    .background(Color(red: 80/255, green: 70/255, blue: 187/255))
                    .foregroundColor(Color.white)
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text(text).tracking(2), message: Text(alert).font(.system(size: 35)), primaryButton: Alert.Button.default(Text(primary),action: {
                        showDetail = true
                    }),secondaryButton:Alert.Button.default(Text(secondary),action: {
                        
                    }))
                }
                
                .fullScreenCover(isPresented: $showDetail) {
                    OTPView(OTP: OTP, mobileNumber: mobileNumber)
                }
                
                    ZStack{
                    
                    Divider()
                        Text("Login With")
                            .fontWeight(.semibold)
                            .padding(15)
                            .background(Color.white)
                    }.padding()
                HStack{
                HStack{
                    Image("g")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 25, alignment: .center)
                    Text("Google")
                    
                }.padding(EdgeInsets(top: 19.94, leading: 32.94, bottom: 19.94, trailing: 32.94))
                        .background(Color(red: 255/255, green: 127/255, blue:93/255).opacity(0.05))
                        .cornerRadius(10)
                    
                HStack{
                    Image("facebook")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 35, height: 25, alignment: .center)
                    Text("Google")
                    
                }.padding(EdgeInsets(top: 19.94, leading: 32.94, bottom: 19.94, trailing: 32.94))
                        .background(Color(red: 255/255, green: 127/255, blue:93/255).opacity(0.05))
                        .cornerRadius(10)
            }
                HStack{
                Text("By creating passcode you agree with our ")
                    .foregroundColor(.black)
                + Text("Terms & Conditions")
                    .foregroundColor(.orange)
                    .bold()
                + Text(" and")
                    .foregroundColor(.black)
                + Text(" Privacy Policy")
                    .foregroundColor(.orange)
                    .bold()
                }.padding()
            }.navigationBarHidden(true)
                
                
            
        }
        }
}

struct LoginWithPhone_Previews: PreviewProvider {
    static var previews: some View {
        LoginWithPhone()
    }
}


