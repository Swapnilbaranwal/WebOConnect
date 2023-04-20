//
//  Login.swift
//  emoHR
//
//  Created by Swapnil baranwal on 18/04/23.
//

import SwiftUI

struct Login: View {
    var body: some View {
        let gradient = Gradient(colors: [Color(red: 255/255, green: 251/255, blue: 243/255), Color.white])
        NavigationView{
        ZStack{
            LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
                        .edgesIgnoringSafeArea(.all)
            VStack{
                Spacer()
                ZStack{
                    Color(red:255/255, green: 127/255, blue: 93/255)
                        .frame(width: 50, height: 50, alignment: .center)
                        .cornerRadius(3)
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 81.57, height: 81.57, alignment: .center)
                }
                
//                Image("Happid")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 125, height: 70, alignment: .center)
//                    .padding(.bottom,176.62)
                Text("Happid")
                    .fontWeight(.black)
                    .font(.system(size: 30))
                    .foregroundColor(Color(red:255/255, green: 127/255, blue: 93/255))
                    .padding(.bottom,176.62)
                Text("Best Markitplac")
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                   
                Text("O On-Time Departures. Pay just for your seat. No Refusal from our end. Spacious & Comfortable Seating. Female passengers safety standards. Onboard Refreshments. Cab Tracking through Maps")
                    .multilineTextAlignment(.center)
                    .padding(EdgeInsets(top: 20, leading: 23.5, bottom: 72, trailing: 23.5))
                    .font(.system(size: 15))
                NavigationLink(destination: LoginWithPhone().navigationBarBackButtonHidden(true)
                    
                    )
                {
                    Text("Get Started")
                        .frame(width: 327.0, height: 60.57, alignment: .center)
                        .background(Color(red: 80/255, green: 70/255, blue: 187/255))
                        .foregroundColor(Color.white)
                        
                    
                }
                .navigationBarHidden(true)
                .padding(5)
                
            }
            
            
        }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
