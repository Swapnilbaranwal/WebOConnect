//
//  Profile1.swift
//  emoHR
//
//  Created by Swapnil baranwal on 19/04/23.
//

import SwiftUI

struct Profile1: View {
    let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var Phone = ""
    @Environment(\.presentationMode) var presentationMode :Binding<PresentationMode>
    var body: some View {
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    Image(systemName: "chevron.backward").onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                            Login()
                    }
                    Spacer()
                    Text("Create Profile")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                    Spacer()
                }.padding()
                ZStack{
                    Color(red:255/255, green: 127/255, blue: 93/255,opacity: 0.2)
                        .frame(width: 150, height: 150, alignment: .center)
                        .cornerRadius(160)
                    Image(systemName: "camera")
                        .resizable()
                        .frame(width: 35, height: 29, alignment: .center)
                        .foregroundColor(Color.orange)
                }
                ScrollView{
                VStack{
                    Text("First Name")
                        .fontWeight(.light)
                        .frame(maxWidth:.infinity,alignment:.leading)
                    TextField("", text: $firstName)
                        .padding()
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.05))
                        
                    Text("Last Name")
                        .fontWeight(.light)
                        .frame(maxWidth:.infinity,alignment:.leading)
                    TextField("", text: $lastName)
                        .padding()
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.05))
                        .cornerRadius(20)
                        
                    Text("Phone")
                        .fontWeight(.light)
                        .frame(maxWidth:.infinity,alignment:.leading)
                    TextField("", text: $Phone)
                        .padding()
                        
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.05))
                        .cornerRadius(20)
                        .border(.orange, width: 1.5)
                        
                    HStack{
                        Text("Pick your Current Location")
                            .foregroundColor(Color.white)
                        Spacer()
                        Image("location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 30)
                    }.padding()
                    .background(Color(red: 255/255, green: 127/255, blue: 93/255))
                    .cornerRadius(10)
                    Group{
                    Text("Or")
                        .foregroundColor(Color.gray)
                        .fontWeight(.medium)
                    Text("Phone")
                        .fontWeight(.light)
                        .frame(maxWidth:.infinity,alignment:.leading)
                    TextField("Select Postal Code or Address", text: $Phone)
                        .padding()
                        
                        .background(Color(red: 255/255, green: 127/255, blue: 93/255).opacity(0.05))
                        .cornerRadius(20)
    //                    .border(.orange, width: 1.5)
                    Text("Submit")
                        .frame(width: 327.0, height: 60.57, alignment: .center)
                        .background(Color(red: 80/255, green: 70/255, blue: 187/255))
                        .foregroundColor(Color.white)
                }
                }
                }
                
            }.padding(15)
        }
    }
}

struct Profile1_Previews: PreviewProvider {
    static var previews: some View {
        Profile1()
    }
}
