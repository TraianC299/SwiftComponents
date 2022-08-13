//
//  SliderExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct SliderExample: View {
    @State var sliderValue: Double = 10
    var body: some View {
        VStack{
            HStack{
                Text("Rating: \(String(format: "%.2f", sliderValue))")
            }
            Slider(value: $sliderValue, in: 0...5)
            Slider(value: $sliderValue, in: 0...5, step: 1.0)
        }
        
    }
}

struct SliderExample_Previews: PreviewProvider {
    static var previews: some View {
        SliderExample()
    }
}
