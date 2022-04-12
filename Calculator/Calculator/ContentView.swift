//
//  ContentView.swift
//  Calculator
//
//  Created by EvenLin on 2022/3/24.
//

import SwiftUI

struct ContentView: View {

//    @State var brain: CalculatorBrain
    @ObservedObject var model = CalculatorModel()
    
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text(model.brain.output)
                .font(.system(size: 76))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            CalculatorButtonPad(brain: $model.brain)
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CalculatorModel()
        ContentView(model: model)
    }
}
