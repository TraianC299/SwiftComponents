//
//  FocusStateExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct FocusStateExample: View {
    //this property wrapper creates a value that is responsible for the focus tstae of the input filed, you can toggle it on appear
    @FocusState private var usernameFocus: Bool
    @State private var textValue:String  = ""
    var body: some View {
        VStack{
            TextField("Username", text: $textValue)
                .focused($usernameFocus)
                .padding()
                .background(Color.gray.opacity(0.5))
            CustomButton(title: "Toggle Focus State") {
                usernameFocus.toggle()
            }
        }
    }
}

struct FocusStateExample_Previews: PreviewProvider {
    static var previews: some View {
        FocusStateExample()
    }
}
