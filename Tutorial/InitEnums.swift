//
//  InitEnums.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct InitEnums: View {
    var backgroundColor:Color
    var textColor:Color
    var borderColor:Color

    
    
    init(type: MyButtonType){
        
        if(type == .ghost){
            self.textColor=Color.blue
            self.backgroundColor=Color.white
            self.borderColor = Color.blue

        }else if type == .text{
            self.textColor=Color.blue
            self.backgroundColor=Color.white
            self.borderColor = Color.white
        }else{
            self.textColor=Color.white
            self.backgroundColor=Color.blue
            self.borderColor = Color.blue
        }
    }
    
    enum MyButtonType {
        case basic
        case ghost
        case text
    }
    
    
    var body: some View {
        Button("Hello", action: {})
            .padding()
            .background(backgroundColor)
            .foregroundColor(textColor)
            .border(borderColor, width: 2)
            .cornerRadius(10)
            
            
        
    }
}

struct InitEnums_Previews: PreviewProvider {
    static var previews: some View {
        InitEnums(type: .basic)
    }
}
