//
//  ContentView.swift
//  Calculator
//
//  Created by EvenLin on 2022/3/24.
//

import SwiftUI

struct ContentView: View {

    @State private var editingHistory = false
    
//    @State var brain: CalculatorBrain
//    @ObservedObject var model = CalculatorModel()
    @EnvironmentObject var model: CalculatorModel
    
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Button("操作历程: \(model.history.count)") {
                self.editingHistory = true
                print(self.model.history.map{$0.title})
            }.sheet(isPresented: self.$editingHistory) {
                HistoryView(model: self.model)
            }
            Spacer()
            Text(model.brain.output)
                .font(.system(size: 76))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            CalculatorButtonPad()
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CalculatorModel()
        ContentView().environmentObject(CalculatorModel())
    }
}
