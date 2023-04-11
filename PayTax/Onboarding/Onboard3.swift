//
//  Onboard3.swift
//  PayTax
//
//  Created by M Irsyad R on 11/04/23.
//

import SwiftUI

struct Onboard3: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Line-BG")
                    .frame(width:.infinity)
            }
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Image("Xatya-3")
                    VStack{
                        
                        VStack{
                            VStack{
                                Image("Logo")
                                    .frame(maxWidth:.infinity,alignment: .leading)
                                    .padding(.bottom)
                                    .padding(.leading)
                                Text("So if you're a freelancer like me, don't let taxes be a headache. You can count your income tax right now in this app.")
                            }
                            .frame(maxWidth:.infinity)
                            .padding(.vertical, 48.0)
                            .padding(.horizontal, 32.0)
                            .cornerRadius(16.0)
                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemBlue), lineWidth: 4))
                        }
                        .padding(.bottom,8.0)
                        
                        Button("􀰓 Let’s count your Income Tax!") {
                            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 14.0)
                        .background(Color(.systemBlue))
                        .foregroundColor(Color(.white))
                        .cornerRadius(200.0)
                        .padding(.bottom,200.0)
                    }
                }
            }
            .ignoresSafeArea()
            .padding(.horizontal, 100.0)
        }
    }
}

struct Onboard3_Previews: PreviewProvider {
    static var previews: some View {
        Onboard3()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
