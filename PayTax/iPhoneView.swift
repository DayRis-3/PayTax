//
//  iPhoneView.swift
//  PayTax
//
//  Created by M Irsyad R on 18/04/23.
//

import SwiftUI

struct iPhoneView: View {
    @State var selectedMenuIndex = 0
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack {
                    HStack {
                        Image("Xatya-PP")
                        Text("Input your taxes either annually or monthly. You can also click a button below to learn more about taxes.")
                            .font(.caption)
                            .padding(.all,8)
                            .background(Color.white)
                            .foregroundColor(Color(.black))
                            .cornerRadius(8)
                            .padding(.vertical)
                    }
                    .padding(.horizontal)
                    
                    Divider().overlay(.white)
                        .padding(.vertical,8)
                    
                    Text("Count PPh21")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("Input Anually", destination: InputAnnualView())
                    
                    buttonMenu("Input Monthly", destination: InputMonthlyView())
                    
                    Divider().overlay(.white)
                        .padding(.vertical,8)
                    
                    Text("Learn More")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("What is PPh 21?", destination: WhatPPh21View())
                    
                    buttonMenu("What is NPNN?", destination: WhatNPPNView())
                    
                    buttonMenu("What is Progressive Tax", destination: WhatProgressiveTaxView())
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .navigationTitle("PayTax")
                .navigationBar(backgroundColor: .blue, titleColor: .white)
                .background(Color.blue)
                
            }
            .foregroundColor(Color.white)
            
            if selectedMenuIndex == 0 {
                EmptyStateView()
            } else if selectedMenuIndex ==  1 {
                InputAnnualView()
            } else if selectedMenuIndex ==  2 {
                InputMonthlyView()
            } else if selectedMenuIndex ==  3 {
                WhatPPh21View()
            } else if selectedMenuIndex ==  4 {
                WhatNPPNView()
            } else if selectedMenuIndex ==  5 {
                WhatProgressiveTaxView()
            }
        }
        .accentColor(Color.white)
        .navigationBarItems(leading: EmptyView())
    }
}

fileprivate func buttonMenu<Destination: View>(_ title: String, destination: Destination) -> some View {
    NavigationLink(destination: destination) {
        ZStack {
            RoundedRectangle(cornerRadius: 14)
                .opacity(0.25)
            HStack {
                Text(title)
                    .bold()
                    .padding(.vertical)
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }
            .padding(.horizontal)
        }
    }
    .buttonStyle(PlainButtonStyle())
    .cornerRadius(14)
    .frame(maxHeight: 50)
    .padding(.horizontal)
}

struct iPhoneView_Previews: PreviewProvider {
    static var previews: some View {
        iPhoneView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
                        .previewDisplayName("iPhone 14")
                }
            }
