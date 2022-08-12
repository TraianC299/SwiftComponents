//
//  ContextMenuExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct ContextMenuExample: View {
    @State var backgroundColor: Color = Color.blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Image(systemName: "house.fill")
                .foregroundColor(.white)
                .font(.title)
            Text("Title")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Text("How to use ContextMenu!")
                .foregroundColor(.white)

        }
        .padding()
        .background(backgroundColor)
        .cornerRadius(10.0)
        .contextMenu {
            Button("Background Red"){
                backgroundColor = Color.red
            }
            Button("Background Green"){
                backgroundColor = Color.green

            }
            Button("Background Purple"){
                backgroundColor = Color.purple

            }
            

        }

        
    }
}

struct ContextMenuExample_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuExample()
    }
}
