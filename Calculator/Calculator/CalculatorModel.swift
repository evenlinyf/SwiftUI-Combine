//
//  CalculatorModel.swift
//  Calculator
//
//  Created by EvenLin on 2022/4/12.
//

import SwiftUI
import Combine

class CalculatorModel: ObservableObject {
    
//    let objectWillChange = PassthroughSubject<Void, Never>()
    
    @Published var history: [CalculatorButtonItem] = []
    
    @Published var brain: CalculatorBrain = .left("0")
    
    func applyItem(_ item: CalculatorButtonItem) {
        self.brain = self.brain.apply(item: item)
        self.history.append(item)
        if item.title == "AC" {
            self.history.removeAll()
        }
    }
//    {
//        willSet {
//            objectWillChange.send()
//        }
//    }
    
}
