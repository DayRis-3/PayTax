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
    
    @State private var nppn = true
        
    @State private var selectedStatus = "Not Married (TK/0)"
        let statuses = ["Not Married (TK/0)", "Married No Kids (K/0)", "Married 1 Kid (K/1)", "Married 2 Kids (K/2)", "Married >3 Kids (K/3)"]
    
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
                    Text("Rp. \(taxableIncome(annualIncome,nppn,selectedStatus))" )
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

func taxableIncome (_ annualIncome: String, _ nppn: Bool, _ selectedStatus: String) -> Double {
    var nppnD : Double
    var statusD : Double
    if nppn == true {
        nppnD=0.5
    } else {
        nppnD=1
    }
    if selectedStatus=="Not Married (TK/0)"{
        statusD=54_000_000
    } else if selectedStatus=="Married No Kids (K/0)"{
        statusD=58_500_000
    } else if selectedStatus=="Married 1 Kid (K/1)"{
        statusD=63_000_000
    } else if selectedStatus=="Married 2 Kids (K/2)"{
        statusD=67_500_000
    } else {
        statusD=72_000_000
    }
    return ((Double(annualIncome) ?? 0) * nppnD) - statusD
    
    
}
//"Married No Kids (K/0)", "Married 1 Kid (K/1)", "Married 2 Kids (K/2)", "Married >3 Kids (K/3)"

//func annualResult (_ taxableIncome: Double, _ nppn: Double, _ status: Double) -> Double {
//    return (annualIncome * nppn) - status
//}

struct InputAnnualView_Previews: PreviewProvider {
    static var previews: some View {
        InputAnnualView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
