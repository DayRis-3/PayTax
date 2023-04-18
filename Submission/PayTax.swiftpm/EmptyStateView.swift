import SwiftUI

struct EmptyStateView: View {
    var body: some View {
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
    }
}

struct EmptyStateView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
