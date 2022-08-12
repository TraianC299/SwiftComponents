//
//  NavigationExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct NavigationExample: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Heelo World Link", destination: MyOtherScreen())
                Text("Heeloi World")
                    //.navigationBarTitleDisplayMode(.inline)
                    //.navigationBarHidden(true)
            }
            .navigationTitle("Text")
            .navigationBarItems(
                leading: NavigationLink("Heelo World Link", destination: MyOtherScreen()),
                trailing: CustomButton(title:"Right"){})

            
            
        }
    }
}

struct MyOtherScreen: View {
    @Environment (\.presentationMode) var presentationMode

    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            CustomButton(title:"Back Button"){
                presentationMode.wrappedValue.dismiss()

            }
            
        }
        .navigationTitle("Green Screen")
    }
}

struct NavigationExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationExample()
    }
}
