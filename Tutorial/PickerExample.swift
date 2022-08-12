//
//  PickerExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct PickerExample: View {
    @State private var selectedColor = "Red"
    var colors = ["Red", "Green", "Blue", "Tartan"]

    var body: some View {
        VStack {
            Picker(selection: $selectedColor) {
                ForEach(colors, id: \.self) {
                    Text($0)
                }
            } label: {
                HStack{
                    Text("Choose a color")
                    Text(selectedColor)
                }
                .font(.headline)
                .frame(maxWidth: .infinity)
                .padding()
                .background(.primary)
                .padding(.horizontal)
                    
            }

                }
        
    }
}

struct PickerExample_Previews: PreviewProvider {
    static var previews: some View {
        PickerExample()
    }
}
