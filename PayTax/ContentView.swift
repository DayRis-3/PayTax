//
//  ContentView.swift
//  PayTax
//
//  Created by M Irsyad R on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    
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
                    
                    Divider()
                    
                    Text("Count PPh21")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("Input Anually", 1)
                    buttonMenu("Input Monthly", 2)
                    
                    Divider()
                        .padding(.vertical)
                    
                    Text("Learn More")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    
                    buttonMenu("What is PPh 21?", 3)
                    
                    buttonMenu("What is NPNN?", 4)
                    
                    buttonMenu("What is Progressive Tax?", 5)
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .navigationTitle("PayTax")
                .navigationBar(backgroundColor: .blue, titleColor: .white)
                .background(Color(.systemBlue))
                
            }
            .foregroundColor(Color.white)
            
            if selectedMenuIndex == 0 {
                ZStack {
                    VStack {
                        Spacer()
                        Image("Xatya-empty")
                    }
                    .ignoresSafeArea()
                    Text("To get started, you can click a button in the sidebar")
                        .bold()
                        .padding(.all,32)
                        .background(Color.blue)
                        .foregroundColor(Color.white)
                        .cornerRadius(14)
                        .frame(width: 240)
                        .offset(x:-100,y:-80)
                }.ignoresSafeArea()
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
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
    }
    
    fileprivate func buttonMenu(_ title: String, _ num: Int) -> some View {
        return
            Button(action:  {                     selectedMenuIndex = num}) {
                ZStack {
                    RoundedRectangle(cornerRadius:14)
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
                .cornerRadius(14)
                .frame(maxHeight: 50)
                .padding(.horizontal)
        }
    }
    
extension View {
    /// Sets background color and title color for UINavigationBar.
    func navigationBar(backgroundColor: Color, titleColor: Color) -> some View {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor(backgroundColor)

        let uiTitleColor = UIColor(titleColor)
        appearance.largeTitleTextAttributes = [.foregroundColor: uiTitleColor]
        appearance.titleTextAttributes = [.foregroundColor: uiTitleColor]

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        
        return self
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
