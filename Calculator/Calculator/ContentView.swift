//
//  ContentView.swift
//  Calculator
//
//  Created by EvenLin on 2022/3/24.
//

import SwiftUI

struct ContentView: View {

    @State private var brain: CalculatorBrain = .left("0")
    
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text(brain.output)
                .font(.system(size: 76))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
            Button {
                self.brain = brain.apply(item: CalculatorButtonItem.digit(8))
            } label: {
                Text("sldkfj ")
            }
            CalculatorButtonPad()
                .padding(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
//        ContentView().previewDevice("iPhone 8")
    }
}
