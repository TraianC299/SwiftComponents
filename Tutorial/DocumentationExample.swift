//
//  DocumentationExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct DocumentationExample: View {
    
    //MARK: Properties
    @State var data : [String] = ["Apples","Oranges","Bananas"]
    @State var triggerAlert: Bool = false
    
    
    var someView: some View {
        VStack{
            Text("Hello")
            ForEach(data, id: \.self) { item in
                Text(item)
                    .font(.headline)
            }
        }
    }
    //MARK: Functions
    /// Gets an alert with a specified title
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
    
    /*
     Multiline comment
     For real
     */
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            someView
            .toolbar {
                HStack{
                    Button("Alert"){
                        triggerAlert.toggle()
                    }
                    Spacer()
                    Button("Alert"){
                    }
                }
            }
            
            .alert(isPresented: $triggerAlert) {
                getAlert(text: "Hello WOrld")
            }
            
        }
    }
}

struct DocumentationExample_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationExample()
    }
}
