//
//  StepperExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct StepperExample: View {
    
    @State var stepperValue: Int = 30
    @State var widthIncrement: CGFloat = 30

    
    
    func incrementWidth(){
        withAnimation {
            widthIncrement+=10
        }
    }
    
    func decrementWidth(){
        withAnimation {
            widthIncrement-=10
        }
    }
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(50)
            RoundedRectangle(cornerRadius: 20)
                .frame(width:widthIncrement, height: 100)
            Stepper("Stepper with func") {
                incrementWidth()
            } onDecrement: {
                decrementWidth()

            }

        }
        
    }
}

struct StepperExample_Previews: PreviewProvider {
    static var previews: some View {
        StepperExample()
    }
}
