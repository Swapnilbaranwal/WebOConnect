////
////  Profile.swift
////  emoHR
////
////  Created by Swapnil baranwal on 19/04/23.
////
//
//import SwiftUI
//
//struct Profile: View {
//    let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
//    @State private var firstName = ""
//    @State private var lastName = ""
//    @State private var Phone = ""
//    @Environment(\.presentationMode) var presentationMode :Binding<PresentationMode>
//    var body: some View {
//        ZStack{
//            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
//            VStack{
//                HStack{
//                    Image(systemName: "chevron.backward").onTapGesture {
//                        presentationMode.wrappedValue.dismiss()
//                    }
//                    Spacer()
//                    Text("Create Profile")
//                        .fontWeight(.semibold)
//                        .multilineTextAlignment(.center)
//                    Spacer()
//                }.padding()
//                ZStack{
//                    Color(red:255/255, green: 127/255, blue: 93/255,opacity: 0.2)
//                        .frame(width: 150, height: 150, alignment: .center)
//                        .cornerRadius(160)
//                    Image(systemName: "camera")
//                        .resizable()
//                        .frame(width: 35, height: 29, alignment: .center)
//                        .foregroundColor(Color.orange)
//                }
//                VStack{
//                    Text("First Name")
//                        .frame(maxWidth:.infinity,alignment:.leading)
//                    TextField("", text: $firstName)
//                        .padding()
//                        .background(Color.orange.opacity(0.06))
//                        .padding()
//                    Text("Last Name")
//                        .frame(maxWidth:.infinity,alignment:.leading)
//                    TextField("", text: $lastName)
//                        .padding()
//                        .background(Color.orange.opacity(0.06))
//                    cornerRadius(20)
//                        .padding()
//                    Text("Phone")
//                        .frame(maxWidth:.infinity,alignment:.leading)
//                    TextField("", text: $Phone)
//                        .padding()
//                        .border(.orange, width: 1.5)
//                        .background(Color.orange.opacity(0.06))
//                        .cornerRadius(20)
//                        .padding()
//                        
//                }
//                HStack{
//                    Text("Pick your Current Location")
//                    Image("location")
//                }
//            }
//        }
//       
//    }
//}
//
//struct Profile_Previews: PreviewProvider {
//    static var previews: some View {
//        Profile()
//    }
//}
