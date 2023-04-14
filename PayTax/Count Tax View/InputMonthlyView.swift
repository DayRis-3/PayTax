//
//  InputMonthlyView.swift
//  PayTax
//
//  Created by M Irsyad R on 12/04/23.
//

import Combine
import SwiftUI

struct InputMonthlyView: View {
    
    @State private var monthlyIncome1 = ""
    @State private var monthlyIncome2 = ""
    @State private var monthlyIncome3 = ""
    @State private var monthlyIncome4 = ""
    @State private var monthlyIncome5 = ""
    @State private var monthlyIncome6 = ""
    @State private var monthlyIncome7 = ""
    @State private var monthlyIncome8 = ""
    @State private var monthlyIncome9 = ""
    @State private var monthlyIncome10 = ""
    @State private var monthlyIncome11 = ""
    @State private var monthlyIncome12 = ""

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
            
            Section ("Q1 Gross Income (In Rupiah)"){
                TextField("January Income", text: $monthlyIncome1)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome1)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome1 = filtered
                        }
                    }
                TextField("February Income", text: $monthlyIncome2)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome2)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome2 = filtered
                        }
                    }
                TextField("March Income", text: $monthlyIncome3)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome3)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome3 = filtered
                        }
                    }
            }
            
            Section ("Q2 Gross Income (In Rupiah)"){
                TextField("April Income", text: $monthlyIncome4)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome4)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome4 = filtered
                        }
                    }
                TextField("May Income", text: $monthlyIncome5)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome5)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome5 = filtered
                        }
                    }
                TextField("June Income", text: $monthlyIncome6)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome6)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome6 = filtered
                        }
                    }
            }
            
            Section ("Q3 Gross Income (In Rupiah)"){
                TextField("July Income", text: $monthlyIncome7)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome7)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome7 = filtered
                        }
                    }
                TextField("August Income", text: $monthlyIncome8)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome8)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome8 = filtered
                        }
                    }
                TextField("September Income", text: $monthlyIncome9)
                    .keyboardType(.numberPad)
                    .textContentType(.oneTimeCode)
                    .onReceive(Just(monthlyIncome9)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.monthlyIncome9 = filtered
                        }
                    }
            }
                
                Section ("Q4 Gross Income (In Rupiah)"){
                    TextField("October Income", text: $monthlyIncome10)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(monthlyIncome10)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.monthlyIncome10 = filtered
                            }
                        }
                    TextField("November Income", text: $monthlyIncome11)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(monthlyIncome11)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.monthlyIncome11 = filtered
                            }
                        }
                    TextField("December Income", text: $monthlyIncome12)
                        .keyboardType(.numberPad)
                        .textContentType(.oneTimeCode)
                        .onReceive(Just(monthlyIncome12)) { newValue in
                            let filtered = newValue.filter { "0123456789".contains($0) }
                            if filtered != newValue {
                                self.monthlyIncome12 = filtered
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
            
        .frame(minHeight:0,maxHeight: .infinity)

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
        .navigationTitle("Input Monthly")
    }
}

struct InputMonthlyView_Previews: PreviewProvider {
    static var previews: some View {
        InputMonthlyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
