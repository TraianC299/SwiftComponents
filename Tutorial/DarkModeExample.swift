//
//  DarkModeExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct DarkModeExample: View {
    var body: some View {
        NavigationView {
            ScrollView{
                VStack(spacing:20){
                    Text("this is text is PRIMARY")
                        .foregroundColor(.primary)
                    Text("this is text is SECONDARY")
                        .foregroundColor(.secondary)
                    Text("this is text is BLACK")
                        .foregroundColor(.black)
                    Text("this is text is WHITE")
                        .foregroundColor(.white)
                    Text("this is text is a color from assets")
                        .foregroundColor(Color("SpecificColor"))
                    
                    
                    
                    
                    


                }
            }
        }
    }
}

struct DarkModeExample_Previews: PreviewProvider {
    static var previews: some View {
        DarkModeExample()
            .preferredColorScheme(.light)
        DarkModeExample()
            .preferredColorScheme(.dark)
    }
}
