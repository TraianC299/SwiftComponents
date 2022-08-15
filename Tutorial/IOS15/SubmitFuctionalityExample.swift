//
//  SubmitFuctionalityExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct SubmitFuctionalityExample: View {
    @State private var textValue:String  = ""

    var body: some View {
        TextField("Username", text: $textValue)
            .padding()
            .background(Color.gray.opacity(0.15))
            .submitLabel(.continue)
            .cornerRadius(10)
            .padding()
            .onSubmit {
                //this funcion executes when the user presses submit 
                print("Pneit")
            }
    }
}

struct SubmitFuctionalityExample_Previews: PreviewProvider {
    static var previews: some View {
        SubmitFuctionalityExample()
    }
}
