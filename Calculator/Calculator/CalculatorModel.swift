//
//  CalculatorModel.swift
//  Calculator
//
//  Created by EvenLin on 2022/4/12.
//

import SwiftUI
import Combine

class CalculatorModel: ObservableObject {
    
    let objectWillChange = PassthroughSubject<Void, Never>()
    
    var brain: CalculatorBrain = .left("0") {
        willSet {
            objectWillChange.send()
        }
    }
    
}
