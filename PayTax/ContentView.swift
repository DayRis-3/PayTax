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
            List {
                Text("A List Item")
                Text("A Second List Item")
                Text("A Third List Item")
            }
        }

    detail: {
            Text("Detail")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
