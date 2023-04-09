//
//  Onboard1.swift
//  PayTax
//
//  Created by M Irsyad R on 09/04/23.
//

import SwiftUI

struct Onboard1: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Line-BG")
                    .frame(width:.infinity)
                
            }
            
            VStack{
                Spacer()
                HStack{
                    Image("Xatya-1")
                    VStack{
                       
                        VStack{
                            VStack{
                                Text("Hi there, my name is Xatya P.! You can call me Xatya. I’m a full-time freelancer who works from home. I love my job, but it comes with unique challenges that traditional employees don't face.")
                                Text("As a freelancer, I have to find clients, manage my finances, and handle my own taxes. One of the biggest challenges I face is figuring out how to pay my taxes correctly. I know it's important, but I don't know where to start.")
                                    .padding(.top)
                            }
                                .padding(.vertical, 48.0)
                                .padding(.horizontal, 32.0)
                                .cornerRadius(16.0)
                                .overlay(
                                     RoundedRectangle(cornerRadius: 4).stroke(Color(.systemBlue), lineWidth: 4))
                        }
                        .padding(.bottom,8.0)
                        
                        Button("􀰓 Next") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14.0)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .cornerRadius(200.0)
                    }
                   
                }
            }
            .padding(.horizontal, 100.0)
        }
        .padding()
    }
    
    struct Onboard1_Previews: PreviewProvider {
        static var previews: some View {
            Onboard1()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
