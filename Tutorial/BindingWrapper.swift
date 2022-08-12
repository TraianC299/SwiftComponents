//
//  BindingWrapper.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct BindingWrapper: View {
    @State var backgroundColor:Color = Color.green
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            ButtonView(backgroundColor:
                        //dolla sign means binding
                        $backgroundColor)
        }
    }
}

struct BindingWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingWrapper()
    }
}



struct ButtonView: View {
    @Binding var backgroundColor:Color
    var body: some View {
        Button("Opress me", action: {
            backgroundColor=Color.red
        })
        .padding()
        .background(.black)
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}
