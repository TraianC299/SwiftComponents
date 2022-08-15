//
//  SystemMaterialsExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct SystemMaterialsExample: View {
    var body: some View {
        VStack{
            VStack{
                Spacer()
                Rectangle()
                    .frame(height:350)
                    .frame(maxWidth: .infinity)
                    .background(.thinMaterial)
                    .cornerRadius(20)
            }
            .ignoresSafeArea()
            
        }
        .background(
            Image("kiwi")
        )
    }
}

struct SystemMaterialsExample_Previews: PreviewProvider {
    static var previews: some View {
        SystemMaterialsExample()
    }
}
