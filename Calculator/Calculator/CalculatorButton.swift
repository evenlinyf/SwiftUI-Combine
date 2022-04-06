//
//  CalculatorButton.swift
//  Calculator
//
//  Created by EvenLin on 2022/4/6.
//

import Foundation
import SwiftUI

struct CalculatorButton: View {
    
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColorName: ColorName
    let action: () -> Void
    
    var body: some View {
        Button {
            
        } label: {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height)
                .background(Color(backgroundColorName.rawValue))
                .cornerRadius(size.width/2)
        }

    }
    
}
