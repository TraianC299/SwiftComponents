//
//  ColorPickerExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct ColorPickerExample: View {
    
    @State var bgColor: Color = Color.green
    var body: some View {
        ZStack{
            bgColor.ignoresSafeArea()
            ColorPicker("Choose a color", selection: $bgColor, supportsOpacity: true)
                .padding()
                .background(.primary)
                .foregroundColor(.white)
                .padding()
                .cornerRadius(10)
        }
    }
}

struct ColorPickerExample_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerExample()
    }
}
