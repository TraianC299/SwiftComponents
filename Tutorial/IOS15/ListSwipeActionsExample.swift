//
//  ListSwipeActionsExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct ListSwipeActionsExample: View {
    @State var fruits: [String] = [
        "apple", "banana", "ananas", "peach"
    ]
    
    
    func deleteItem(indexSet:IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
    var body: some View {
        List{
            // new way to loop without element in
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive"){}
                        Button("Junk"){}.tint(.red)
                    }
            }
            }
        }
    }


struct ListSwipeActionsExample_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsExample()
    }
}
