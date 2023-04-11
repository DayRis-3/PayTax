//
//  ContentView.swift
//  PayTax
//
//  Created by M Irsyad R on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationSplitView {
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
                    }
                    .padding(.horizontal)
                    
                    Divider()
                        .padding(.vertical)
                    
                    Text("Count PPh21")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("Input Anually")
                    buttonMenu("Input Monthly")
                    
                    Divider()
                        .padding(.vertical)
                    
                    Text("Learn More")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("What is PPh 21?")
                    
                    buttonMenu("What is NPNN?")
                    
                    buttonMenu("What is Progressive Tax?")
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
                .navigationTitle("PayTax")
                .navigationBar(backgroundColor: .blue, titleColor: .white)
                .background(Color(.systemBlue))
                
            }
            .foregroundColor(Color.white)
            
        } detail: {
                Text("Detail")
        }
        .accentColor(Color.white)
    }
    
    fileprivate func buttonMenu(_ title: String) -> some View {
        return ZStack {
            RoundedRectangle(cornerRadius:14)
                .opacity(0.25)
            
            HStack {
                Text(title)
                    .bold()
                Spacer()
                Image(systemName: "arrow.right.circle.fill")
            }
            .padding(.horizontal)
        }
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
