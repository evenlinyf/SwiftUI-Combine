//
//  ContentView.swift
//  Calculator
//
//  Created by EvenLin on 2022/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button {
            print("点击了Btn")
        } label: {
            Text("+")
                .font(.system(size: 38))
                .frame(width: 88, height: 88)
                .foregroundColor(.white)
                .background(Color("OperatorBg"))
                .cornerRadius(44)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
