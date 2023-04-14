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
        VStack {
            Form {
                Section ("Annual Gross Income (In Rupiah)"){
                    TextField("e.g 100000000", text: $annualIncome)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(annualIncome)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.annualIncome = filtered
                            }
                        }
                }
                Section ("Use NPPN") {
                    Picker("NPPN",
                           selection:$selectedNppn) {
                        ForEach(nppn, id: \.self) {
                            Text($0)}}
                }
                Section ("Current Statuses") {
                    Picker("Current Status", selection: $selectedStatus) {
                        ForEach(statuses, id: \.self) {
                            Text($0)}}}
                
            }

            VStack {
                Text("Results")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                    .frame(maxWidth:.infinity,alignment: .leading)
                    .padding(.bottom,4)
                HStack {
                    Text("Tax that you need to pay annually (PPh 21)")
                        .font(.title3)
                        .foregroundColor(Color.blue)
                    Spacer()
                    Text("Rp. 0")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
            }
            .padding(.horizontal,32)
            .padding(.vertical,24)
            .cornerRadius(8)
        }
        .navigationTitle("Input Annually")
    }
}

struct InputAnnualView_Previews: PreviewProvider {
    static var previews: some View {
        InputAnnualView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
