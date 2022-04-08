//
//  CalculatorButtonRow.swift
//  Calculator
//
//  Created by EvenLin on 2022/4/6.
//

import Foundation
import SwiftUI

struct CalculatorButtonRow: View {
    
    @Binding var brain: CalculatorBrain
    
    let row: [CalculatorButtonItem]
    
    var body: some View {
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title, size: item.size, backgroundColorName: item.backgroundColorName) {
                    self.brain = self.brain.apply(item: item)
                }
            }
        }
    }
}
