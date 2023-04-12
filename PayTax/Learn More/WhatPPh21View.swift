//
//  WhatPPh21View.swift
//  PayTax
//
//  Created by M Irsyad R on 10/04/23.
//

import SwiftUI

struct WhatPPh21View: View {
    var body: some View {
        VStack{
            Text("What is PPh 21?")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.vertical)
                .frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                Text("PPh 21 Definition")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                    .frame(maxWidth:.infinity,alignment: .leading)
                Text("PPh21 is an acronym for \"Pajak Penghasilan 21\" in Indonesian, which translates to \"Income Tax 21\". It is a type of income tax that is applicable to individuals who receive income from employment, whether it is in the form of salary, wages, bonuses, or other types of compensation.\n\nEmployers are responsible for withholding and remitting PPh21 on behalf of their employees to the Indonesian tax authorities. The withholding amount is calculated based on the employee's taxable income, taking into account any tax deductions and exemptions that may apply.\n\nIn summary, PPh21 is an income tax that is applicable to individuals who receive income from employment in Indonesia, and is calculated based on a progressive tax rate system. Employers are responsible for withholding and remitting PPh21 on behalf of their employees.")
            }.frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                Text("Freelancer’s PPh 21 Difference")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                    .frame(maxWidth:.infinity,alignment: .leading)
                Text("If a person is a freelancer in Indonesia, they are still required to pay income tax, including PPh21. However, the way the tax is calculated and paid is different compared to someone who is an employee.\n\nAs a freelancer, you will need to register yourself as a taxpayer and obtain a Taxpayer Identification Number (NPWP) from the tax office. You will also need to file a tax return and pay the tax on your own, instead of having an employer withhold and remit the tax on your behalf.\n\nThe tax rate for PPh21 for freelancers is also based on a progressive tax rate system. The tax rate increases as the taxable income increases, and there are certain tax deductions and exemptions that may apply.\n\nIt is important to keep accurate records of your income and expenses as a freelancer to ensure that you are correctly reporting your taxable income and taking advantage of any applicable tax deductions.\n\nIn summary, freelancers in Indonesia are still required to pay income tax, including PPh21. They will need to register as a taxpayer, file a tax return, and pay the tax on their own. The tax rate for PPh21 is based on a progressive tax rate system, and there are certain tax deductions and exemptions that may apply.")
            }.frame(maxWidth:.infinity,alignment: .leading)
                .padding(.top)
            Spacer()
        }.padding(.horizontal,40)
            .padding(.top)
    }
}

struct WhatPPh21View_Previews: PreviewProvider {
    static var previews: some View {
        WhatPPh21View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
