//
//  Onboard2.swift
//  PayTax
//
//  Created by M Irsyad R on 11/04/23.
//

import SwiftUI

struct Onboard2: View {
    var body: some View {
        ZStack{
            VStack{
                Spacer()
                Image("Line-BG")
                    .frame(maxWidth:.infinity)
            }
            .ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Image("Xatya-2")
                    VStack{
                        
                        VStack{
                            VStack{
                                Text("I did some research and found out that paying taxes is not optional for freelancers like me.  I could face penalties, fines, and even legal action if I don't file my taxes correctly. There are different type of taxes, the most important one for freelancers is PPh 21 (Income Tax).")
                            }
                            .frame(maxWidth:.infinity)
                            .padding(.vertical, 48.0)
                            .padding(.horizontal, 32.0)
                            .cornerRadius(16.0)
                            .overlay(RoundedRectangle(cornerRadius: 4).stroke(Color(.systemBlue), lineWidth: 4))
                        }
                        .padding(.bottom,8.0)
                        
                        NavigationLink (
                            destination: Onboard3()
                            ,label: {
                                Text("􀰓 Next")
                                    .bold()
                                .frame(maxWidth: .infinity)
                                .padding(.vertical, 14.0)
                                .background(Color(.systemBlue))
                                .foregroundColor(Color(.white))
                                .cornerRadius(200.0)
                            }
                        )
                    }
                    .padding(.bottom,400)
                }
            }
            .ignoresSafeArea()
            .padding(.trailing, 100.0)
        }
    }
}

struct Onboard2_Previews: PreviewProvider {
    static var previews: some View {
        Onboard2()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
