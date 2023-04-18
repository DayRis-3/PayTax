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
                    
                    Divider().overlay(.white)
                        .padding(.vertical,8)
                    
                    Text("Count PPh21")
                        .font(.title2)
                        .fontWeight(.bold)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.leading)
                    
                    buttonMenu("Input Anually", 1)
                    buttonMenu("Input Monthly", 2)
                        .padding(.bottom,8)
                    
                    Divider().overlay(.white)
                        .padding(.vertical,8)
                    
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
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: EmptyView())
    }
    
    fileprivate func buttonMenu(_ title: String, _ num: Int) -> some View {
        return Button(action: {selectedMenuIndex = num}) {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
