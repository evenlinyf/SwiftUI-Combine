//
//  ContentView.swift
//  Calculator
//
//  Created by EvenLin on 2022/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 12){
            Spacer()
            Text("0")
                .font(.system(size: 76))
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
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
