//
//  StateExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct StateExample: View {
    
    @State var backgroundColor:Color = Color.green
    @State var title:String = ""
    @State var count:Int = 0
    
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            VStack(spacing:20){
                Text("\(title)")
                    .font(.title)
                Text("Count \(count)")
                    .underline()
                HStack{
                    Button("Button 1", action: {
                        backgroundColor=Color.red
                        title="Color is red now"
                        count+=1
                    })
                        .foregroundColor(.white)
                        .padding()
                        .shadow(radius: 30)
                    
                    Button("Button 2", action: {
                        backgroundColor=Color.blue
                        title="Color is blue now"
                        count+=1

                    })
                        .foregroundColor(.white)
                        .padding()
                        .shadow(radius: 10)



                }
            }
        }
    }
}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
