//
//  ExtractedFunctions.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct ExtractedFunctions: View {
    @State var backgroundColor:Color = Color.green

    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack{
                contentLayer
                ExtractedView(count: 20)
            }
            
            
        }
    }
    
    var contentLayer: some View {
        VStack{
            Text("Ttitle")
                .font(.largeTitle)
            Button("Opress me", action: {
                backgroundColor=Color.red
            })
            .padding()
            .background(.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            
        }
    }
}

struct ExtractedFunctions_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctions()
    }
}


//extracted subview only when we need it to chenge so we need state
struct ExtractedView: View {
    @State var count:Int=0
    var body: some View {
        VStack{
            Text("Count \(count)")
                .font(.largeTitle)
            Button("Opress me please", action: {
                count+=1
            })
            .padding()
            .background(.blue)
            .cornerRadius(10)
            .foregroundColor(.white)
        }
    }
}
