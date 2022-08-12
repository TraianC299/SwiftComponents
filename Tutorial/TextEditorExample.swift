//
//  TextEditorExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct TextEditorExample: View {
    @State var textEditorText: String = ""
    var body: some View {
        VStack{
            TextEditor(text: $textEditorText)
                .frame(height:250)
                .border(Color.gray.opacity(0.5), width: 1)
                .colorMultiply(.blue)
                
            HStack(alignment: .lastTextBaseline){
                CustomButton(title:"Placeholder"){
                    
                }
            }
        }
        .padding()
        
    }
}

struct TextEditorExample_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorExample()
    }
}
