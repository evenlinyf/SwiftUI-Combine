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
    
    var historyDetail: String {
        history.map{ $0.title }.joined()
    }
    
    var temporaryKept: [CalculatorButtonItem] = []
    
    var totalCount: Int {
        history.count + temporaryKept.count
    }
    
    var slidingIndex: Float = 0 {
        didSet {
            keepHistory(upTo: Int(slidingIndex))
        }
    }
    
    func keepHistory(upTo index: Int) {
        precondition(index <= totalCount, "index out of range")
        let total = history + temporaryKept
        history = Array(total[..<index])
        temporaryKept = Array(total[index...])
        
        brain = history.reduce(CalculatorBrain.left("0"), { partialResult, item in
            partialResult.apply(item: item)
        })
        
    }
    
    @Published var history: [CalculatorButtonItem] = []
    
    @Published var brain: CalculatorBrain = .left("0")
    
    func applyItem(_ item: CalculatorButtonItem) {
        self.brain = self.brain.apply(item: item)
        self.history.append(item)
        
        temporaryKept.removeAll()
        slidingIndex = Float(totalCount)
    }
//    {
//        willSet {
//            objectWillChange.send()
//        }
//    }
    
}
