//
//  LoginVerification.swift
//  emoHR
//
//  Created by Swapnil baranwal on 18/04/23.
//

import SwiftUI

struct LoginVerification: View {
    @State private var text = ""
    @Environment(\.presentationMode) var presentationMode :Binding<PresentationMode>
    var body: some View {
        let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
        ZStack {
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
            VStack{
                
                HStack {
                    Image(systemName: "chevron.backward").onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                    Spacer()
                }.padding()
                Group{
                HStack {
                    Text("Enter Your Mobile \nNumber")
                        .font(.system(size: 37))
                        .fontWeight(.heavy)
                        Spacer()
                }.padding(EdgeInsets(top: 80, leading: 24, bottom:10, trailing: 24))
                HStack {
                    Text("Hello, Welcome Back to Our Account")
                        .font(.system(size: 16))
                    Spacer()
                }
                    padding(.horizontal)
                    HStack{
                        HStack{
                            Image("india")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 25, alignment: .center)
                            Text("+91")
                        }
                        .padding()
                        
                                        
                    }
                }
                    
            }
        }
    }
}

struct LoginVerification_Previews: PreviewProvider {
    static var previews: some View {
        LoginVerification()
    }
}
