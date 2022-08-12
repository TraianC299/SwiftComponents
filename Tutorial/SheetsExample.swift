//
//  SheetsExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct SheetsExample: View {
    @State var showSheet:Bool = false
    var body: some View {
        ZStack{
            Color.green
                .ignoresSafeArea()
            CustomButton(title: "Toggle Sheet", clicked: {
                showSheet.toggle()
            })
            //.fullScreenCover(isPresented: $showSheet) {
            //    SheetView()
            //}
            .sheet(isPresented: $showSheet) {
                SheetView()
            }
        }
    }
}

struct SheetsExample_Previews: PreviewProvider {
    static var previews: some View {
        SheetsExample()
    }
}

struct SheetView: View {
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading){
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .padding()
                    .background(.gray)
                    .opacity(0.5)
                    .cornerRadius(130)
            }


        }
    }
}
