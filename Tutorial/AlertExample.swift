//
//  AlertExample.swift
//  Tutorial
//
//  Created by Traian on 11.08.2022.
//

import SwiftUI

struct AlertExample: View {
    
    @State var showAlert = false
    @State var backgroundColor:Color = .gray

    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea()
            CustomButton(title:"Hello"){
                showAlert.toggle()
            }
            .alert("Hello World of Alerts", isPresented: $showAlert, actions: {
                Button("Change background") {
                    backgroundColor=Color.yellow
                }
                Button("Make it gray") {
                    backgroundColor=Color.gray

                }
            })
        }
        
    }
}

struct AlertExample_Previews: PreviewProvider {
    static var previews: some View {
        AlertExample()
    }
}
