//
//  InputAnnualView.swift
//  PayTax
//
//  Created by M Irsyad R on 12/04/23.
//

import Combine
import SwiftUI

struct InputAnnualView: View {
    
    @State private var annualIncome = ""
    private let numberOnlyFormatter: NumberFormatter = {
            let formatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.maximumFractionDigits = 0
            return formatter
        }()
    
    @State private var selectedNppn = "Yes"
        let nppn = ["Yes", "No"]
    
    @State private var selectedStatus = "Not Married (TK/0)"
        let statuses = ["Not Married (TK/0)", "Married No Kids (K/0)", "Married 1 Kid (K/1)", "Married 2 Kids (K/2)", "Married >3 Kids (K/3)"]
    
    var body: some View {
        VStack{
            Text("Input Annually")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.blue)
                .padding(.vertical)
                .frame(maxWidth:.infinity,alignment: .leading)
            VStack {
                VStack {
                    Text("Annual Gross Income (In Rupiah)")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    TextField("e.g 100000000", text: $annualIncome)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(annualIncome)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.annualIncome = filtered
                            }
                        }
                        .textFieldStyle(.roundedBorder)
                        .padding(.bottom)
                    
                    Text("Use NPPN")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth:.infinity,alignment: .leading)
                     Picker("NPPN",
                            selection:$selectedNppn) {
                            ForEach(nppn, id: \.self) {
                                Text($0)}}
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .pickerStyle(.segmented)
                    Text("You should use NPPN if you are a freelancer!")
                        .font(.caption)
                        .foregroundColor(Color.blue)
                        .frame(maxWidth:.infinity,alignment: .leading)
                        .padding(.top,4)
                        .padding(.bottom)
                    
                    Text("Current Status")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        .frame(maxWidth:.infinity,alignment: .leading)
                    Picker("Status",
                           selection:$selectedStatus) {
                           ForEach(statuses, id: \.self) {
                               Text($0)}}
                           .frame(maxWidth:.infinity,alignment: .leading)
                           .pickerStyle(.segmented)
                    Spacer()
                    VStack {
                        Text("Results")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .frame(maxWidth:.infinity,alignment: .leading)
                            .padding(.bottom,24)
                        HStack {
                            Text("Tax that you need to pay annually (PPh 21)")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                            Spacer()
                            Text("Rp. 0")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                    }
                    .padding(.horizontal,32)
                    .padding(.vertical,24)
                    .background(Color.blue)
                    .cornerRadius(8)
                }
            }.frame(maxWidth:.infinity,alignment: .leading)
        }
            .padding(.horizontal,40)
            .padding(.top)
            .navigationTitle("Count PPh21")
    }
}

struct InputAnnualView_Previews: PreviewProvider {
    static var previews: some View {
        InputAnnualView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
