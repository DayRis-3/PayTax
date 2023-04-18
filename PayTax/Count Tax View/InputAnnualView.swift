//
//  InputAnnualView.swift
//  PayTax
//
//  Created by M Irsyad R on 12/04/23.
//

import Combine
import SwiftUI
import Foundation

struct InputAnnualView: View {
    
    @State private var annualIncome = ""
    
    @State private var nppn = true
        
    @State private var selectedStatus = "Not Married (TK/0)"
        let statuses = ["Not Married (TK/0)", "Married No Kids (K/0)", "Married 1 Kid (K/1)", "Married 2 Kids (K/2)", "Married >3 Kids (K/3)"]
    
    func calculateAnnualTax() -> Double {
        guard let totalIncome = Double(annualIncome) else { return 0 }
        let nppnMultiplier = nppn ? 0.5 : 1.0
        let statusDeduction: Double
        switch selectedStatus {
        case "Not Married (TK/0)": statusDeduction = 54000000
        case "Married No Kids (K/0)": statusDeduction = 58500000
        case "Married 1 Kid (K/1)": statusDeduction = 63000000
        case "Married 2 Kids (K/2)": statusDeduction = 67500000
        default: statusDeduction = 72000000
        }
        let taxableIncomeValue = totalIncome * nppnMultiplier - statusDeduction
        let tax: Double
        switch taxableIncomeValue {
        case ..<0: tax = 0
        case ..<60000000: tax = taxableIncomeValue * 0.05
        case ..<250000000: tax = taxableIncomeValue * 0.15 - 6000000
        case ..<500000000: tax = taxableIncomeValue * 0.25 - 31000000
        case ..<5000000000: tax = taxableIncomeValue * 0.3 - 56000000
        default: tax = taxableIncomeValue * 0.35 - 306000000
        }
        return max(0, tax)
    }
    
    var body: some View {
        VStack {
            Form {
                Section ("Annual Gross Income (In Rupiah)"){
                    TextField("e.g 100.000.000", text: $annualIncome)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(annualIncome)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.annualIncome = filtered
                            }
                        }
                }
                Section ("Use NPPN?") {
                    Toggle(isOn: $nppn) {
                        Text("NPPN")
                    }
                }
                Section ("Current Status") {
                    Picker("Your Status", selection: $selectedStatus) {
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
                    
                    let payTax = calculateAnnualTax()

                    if payTax <= 0 {
                        Text("You don't have to pay tax")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    } else {
                        Text("Rp. \(payTax, specifier: "%.2f")")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color.blue)
                    }
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
