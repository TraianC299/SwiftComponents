//
//  AppStorageExample.swift
//  Tutorial
//
//  Created by Traian on 14.08.2022.
//

import SwiftUI

struct AppStorageExample: View {
    
    @AppStorage("name") var currentUsername: String?
    
    
    var body: some View {
        VStack{
            Text(currentUsername ?? "No username")
            CustomButton(title: "Save") {
                let name:String = "Emily"
                currentUsername=name
            }
        }
        
    }
}

struct AppStorageExample_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageExample()
    }
}
