//
//  Conditionals.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct Conditionals: View {
    @State var showCircle:Bool = false
    @State var isLoading:Bool = false
    @State var redColor:Bool = false


    var body: some View {
        VStack{
            Button("Toggle Shape"){
                showCircle.toggle()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            
            if showCircle{
                Circle()
                    .frame(width:100, height:100)
            }else{
                Rectangle()
                    .frame(width:100, height:100)
            }
            Button("Toggle Loading"){
                isLoading.toggle()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            if isLoading{
                ProgressView()
            }
            Button("Toggle Color"){
                redColor.toggle()
            }
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            Rectangle()
                .fill(redColor ? Color.red : Color.blue)
                .frame(width:100, height:100)
                
            
        }
        
        
    }
}

struct Conditionals_Previews: PreviewProvider {
    static var previews: some View {
        Conditionals()
    }
}
