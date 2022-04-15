//
//  HistoryView.swift
//  Calculator
//
//  Created by EvenLin on 2022/4/15.
//

import Foundation
import SwiftUI

struct HistoryView: View {
    
    @ObservedObject var model: CalculatorModel
    
    var body: some View {
        VStack {
            if model.totalCount == 0 {
                Text("没有历程")
            } else {
                HStack {
                    Text("历程").font(.headline)
                    Text("\(model.historyDetail)").lineLimit(nil)
                }
                HStack {
                    Text("显示").font(.headline)
                    Text("\(model.brain.output)")
                }
                Slider (value: $model.slidingIndex, in: 0...Float(model.totalCount), step: 1)
            }
        }.padding()
    }
}
