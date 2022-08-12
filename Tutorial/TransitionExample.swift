//
//  TransitionExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct TransitionExample: View {
    @State var showDetails:Bool = false
    var body: some View {
        ZStack(alignment: .bottom){
            ZStack{
                if showDetails {
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.height*0.5, height:700)
                        .transition(.move(edge: .bottom))
                        
                
                }

            }
            .zIndex(2.0)
            VStack {
                CustomButton(title:"Button"){
                    withAnimation(.spring()){
                        showDetails.toggle()
                    }
                }
                Spacer()
            }
            
        }
        .ignoresSafeArea(.all, edges: [.bottom])

    }
        
}


struct TransitionExample_Previews: PreviewProvider {
    static var previews: some View {
        TransitionExample()
    }
}
