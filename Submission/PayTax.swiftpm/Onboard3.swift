import SwiftUI

struct Onboard3: View {
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
                HStack {
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
                        
                        NavigationLink (
                            destination: ContentView()
                            ,label: {
                                Text("􀰓 Let’s count your Income Tax!")
                                    .bold()
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 14.0)
                                    .background(Color(.systemBlue))
                                    .foregroundColor(Color(.white))
                                    .cornerRadius(200.0)
                            }
                        )
                    }
                    .padding(.bottom,500)
                }
            }
            .ignoresSafeArea()
            .padding(.trailing, 100.0)
        }
    }
}

struct Onboard3_Previews: PreviewProvider {
    static var previews: some View {
        Onboard3()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
