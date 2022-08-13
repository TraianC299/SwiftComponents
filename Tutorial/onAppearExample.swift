//
//  onAppearExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct onAppearExample: View {
    @State var textValue: String = ""
    var body: some View {
        ScrollView{
            Text(textValue)
        }
        .onAppear{
            //setTimeuout basically (5 sec)
            DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                textValue = "Appeared"
            })
        }
    }
}

struct onAppearExample_Previews: PreviewProvider {
    static var previews: some View {
        onAppearExample()
    }
}
