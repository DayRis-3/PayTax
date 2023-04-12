//
//  WhatProgressiveTaxView.swift
//  PayTax
//
//  Created by M Irsyad R on 12/04/23.
//

import SwiftUI

struct WhatProgressiveTaxView: View {
    var body: some View {
        VStack{
            Text("What is Progressive Tax?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.vertical)
                .frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                Text("Progressive Tax Definition")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                    .frame(maxWidth:.infinity,alignment: .leading)
                Text("The progressive rate tax system in Indonesia is a tax system where the tax rate increases as the taxable income increases. In other words, individuals with higher income levels will pay a higher tax rate than those with lower income levels. This is designed to create a fair tax system where those who can afford to pay more taxes contribute a higher proportion of their income.\n\nIt's important to note that the taxable income includes all types of income, including employment income, business income, investment income, and other types of income. Additionally, certain deductions and exemptions may be available to taxpayers, which can reduce their taxable income and lower their tax liability.\n\nThe Indonesian government uses the revenue generated from the progressive tax system to fund various public services, including healthcare, education, infrastructure development, and social welfare programs.")
            }.frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                Text("Progressive Tax Bracket")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                    .frame(maxWidth:.infinity,alignment: .leading)
                Text("The progressive rate tax system in Indonesia has several tax brackets, with different tax rates applying to each bracket. For the tax year 2023, the tax brackets and rates are as follows:\n•Taxable income up to IDR 60 million: 5%\n•Taxable income between IDR 60 million and IDR 250 million: 15%\n•Taxable income between IDR 250 million and IDR 500 million: 25%\n•Taxable income between IDR 500 million and IDR 5 billion: 30%\n•Taxable income above IDR 5 billion: 35%")
                
            }.frame(maxWidth:.infinity,alignment: .leading)
                .padding(.top)
            Spacer()
        }
            .padding(.horizontal,40)
            .padding(.top)
            .navigationTitle("Learn More")
    }
}

struct WhatProgressiveTaxView_Previews: PreviewProvider {
    static var previews: some View {
        WhatProgressiveTaxView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
