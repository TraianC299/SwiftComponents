//
//  IfLetGuardExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct IfLetGuardExample: View {
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    @State var userId: String? = nil

    
    
    func loadData(){
        if let uid = userId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
                displayText = "This is the new data : \(uid)"
                isLoading  = false
            })
        }else{
            displayText = "No user id"
        }
    }
    
    //same thing as loadData
    func loadData2(){
        guard let uid = userId else{
            displayText = "No user id"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3, execute: {
            displayText = "This is the new data : \(uid)"
            isLoading  = false
        })
    }
    var body: some View {
        NavigationView{
            VStack{
                Text("Here we are practicing safe coding")
                if isLoading {
                    ProgressView()
                }
                //only if displayText is not nil then it is gonna display the component
                if let text  = displayText {
                    Text(text)
                        .font(.title)
                }
                
                Spacer()
            }
            .onAppear {
                loadData()
            }
        }
    }
}

struct IfLetGuardExample_Previews: PreviewProvider {
    static var previews: some View {
        IfLetGuardExample()
    }
}
