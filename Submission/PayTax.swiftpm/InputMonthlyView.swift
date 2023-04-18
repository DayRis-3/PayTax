import Combine
import SwiftUI
import Foundation

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
    
    @State private var nppn = true
    
    @State private var selectedStatus = "Not Married (TK/0)"
    let statuses = ["Not Married (TK/0)", "Married No Kids (K/0)", "Married 1 Kid (K/1)", "Married 2 Kids (K/2)", "Married >3 Kids (K/3)"]
    
    func calculateAnnualTax() -> Double {
        let monthlyIncomes = [monthlyIncome1, monthlyIncome2, monthlyIncome3, monthlyIncome4, monthlyIncome5, monthlyIncome6, monthlyIncome7, monthlyIncome8, monthlyIncome9, monthlyIncome10, monthlyIncome11, monthlyIncome12].compactMap { Int($0) }
        let totalIncome = monthlyIncomes.reduce(0, +)
        let nppnMultiplier = nppn ? 0.5 : 1.0
        let statusDeduction = selectedStatus == "Not Married (TK/0)" ? 54000000 : selectedStatus == "Married No Kids (K/0)" ? 58500000 : selectedStatus == "Married 1 Kid (K/1)" ? 63000000 : selectedStatus == "Married 2 Kids (K/2)" ? 67500000 : 72000000
        let taxableIncomeValue = Double(totalIncome) * nppnMultiplier - Double(statusDeduction)
        let tax: Double
        switch taxableIncomeValue {
        case ..<0:
            tax = 0
        case ..<60000000:
            tax = taxableIncomeValue * 0.05
        case ..<250000000:
            tax = taxableIncomeValue * 0.15 - 6000000
        case ..<500000000:
            tax = taxableIncomeValue * 0.25 - 31000000
        case ..<5000000000:
            tax = taxableIncomeValue * 0.3 - 56000000
        default:
            tax = taxableIncomeValue * 0.35 - 306000000
        }
        return max(0, tax)
    }
    
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
                Divider()
                
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
        .navigationTitle("Input Monthly")
    }
}

struct InputMonthlyView_Previews: PreviewProvider {
    static var previews: some View {
        InputMonthlyView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
