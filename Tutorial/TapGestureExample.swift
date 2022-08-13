//
//  TapGestureExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct TapGestureExample: View {
    @State var backgroundColor:Color = Color.red
    
    
    //the difference is the effect that button makes whn you click on it
    var body: some View {
        VStack(spacing: 50){
            Rectangle()
                .foregroundColor(backgroundColor)
                .frame(width: 100, height: 100)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .background(.blue)
                .font(.headline)
                .foregroundColor(.white)
                .cornerRadius(10)
                //.onTapGesture {
                //    backgroundColor = Color.blue
                //}
                .onTapGesture(count: 2) {
                    backgroundColor = Color.blue
                }
        }
        
    }
}

struct TapGestureExample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureExample()
    }
}
