//
//  WhatNPPNView.swift
//  PayTax
//
//  Created by M Irsyad R on 12/04/23.
//

import SwiftUI

struct WhatNPPNView: View {
    var body: some View {
        VStack{
            Text("What is NPPN?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.vertical)
                .frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                Text("NPPN Definition")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                    .frame(maxWidth:.infinity,alignment: .leading)
                Text("NPPN in Indonesian taxes stands for \"Norma Penghitungan Penghasilan Neto\", which is a tax calculation norm used to determine the net taxable income of certain types of taxpayers in Indonesia. The NPPN includes various deductions and allowances, is updated annually, and failure to comply with tax regulations can result in penalties and fines.\n\nThe tax deduction in NPPN is typically 50% of the total gross income. According to Indonesian tax regulations, freelancers who earn income from certain types of services, such as consulting, engineering, design, and similar services, are entitled to a special tax deduction of 50% of their gross income. This deduction is known as the \"final tax deduction\" or \"final tax regime\".\n\nUnder this regime, freelancers who qualify for the deduction are not required to report or pay any additional income tax beyond the 50% tax deduction. However, they are still required to file their annual tax returns and report their income, and they may be subject to other taxes and fees related to their business activities.\n\nIt's important to note that this final tax deduction only applies to certain types of services and is not applicable to all types of income earned by freelancers in Indonesia. As such, it is important to consult with a qualified tax professional or accountant to determine the specific tax treatment that applies to your particular situation.")
            }.frame(maxWidth:.infinity,alignment: .leading)
            Spacer()
        }
            .padding(.horizontal,40)
            .padding(.top)
            .navigationTitle("Learn More")
    }
}

struct WhatNPPNView_Previews: PreviewProvider {
    static var previews: some View {
        WhatNPPNView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
