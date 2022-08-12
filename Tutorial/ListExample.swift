//
//  ListExample.swift
//  Tutorial
//
//  Created by Traian on 11.08.2022.
//

import SwiftUI

struct ListExample: View {
    
    @State var fruits: [String] = [
        "apple", "banana", "ananas", "peach"
    ]
    
    
    func deleteItem(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit.capitalized)
                }
                .onDelete(perform: deleteItem)
                .onMove(perform: {indices, newOffset in
                    fruits.move(fromOffsets: indices, toOffset: newOffset)
                })

            }
            .navigationTitle("Fruits")
            .navigationBarItems(leading: EditButton(), trailing: Button("Add"){
                fruits.append("Coconut")
            })
        }
    }
}

struct ListExample_Previews: PreviewProvider {
    static var previews: some View {
        ListExample()
    }
}
