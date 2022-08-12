//
//  TextFieldExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct TextFieldExample: View {
    @State var textFieldText : String = ""
    @State var dataArray : [String] = []

    
    
    func saveText(){
        if textValidation() {
            dataArray.append(textFieldText)
            textFieldText=""

        }
    }
    
    func textValidation() -> Bool{
        if(textFieldText.count >= 3){
            return true
        }
        return false

    }
    var body: some View {
        VStack{
            TextField("Heelo Wotld", text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.1))
                .font(.headline)
            Button("Save"){
                saveText()

            }
            .padding()
            .foregroundColor(.white)
            .background(textValidation() ? Color.blue : Color.gray)
            .cornerRadius(10)
            .disabled(!textValidation())
           
            ForEach(dataArray, id: \.self) { item in
                Text(item.capitalized)
            }

        }
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
