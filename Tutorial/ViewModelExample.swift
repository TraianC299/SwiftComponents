//
//  ViewModelExample.swift
//  Tutorial
//
//  Created by Traian on 14.08.2022.
//

import SwiftUI


struct FruitModel: Identifiable{
    let id:String = UUID().uuidString
    let count:Int
    let name:String
}


class FruitViewModel : ObservableObject{
    
    //every time this value updates it is gonna notify the View
    @Published var fruitsArray: [FruitModel]  = [
        FruitModel(count: 13, name: "Watermelon")
    ]
    
    //some kind of useEffect
    init() {
        getFruits()
    }
    
    
    func getFruits(){
        let fruit1 = FruitModel(count: 33, name: "Banana")
        let fruit2 = FruitModel(count: 55, name: "Apple")
        let fruit3 = FruitModel(count: 22, name: "Peach")
        fruitsArray.append(contentsOf: [fruit1, fruit2, fruit3])
    }
    
    func deleteFruit(indexSet: IndexSet){
        fruitsArray.remove(atOffsets: indexSet)
    }
}

struct ViewModelExample: View {
    //2 options ObservedObject and StateObject, state object keeps data state even after rerendering of the whole view
    @ObservedObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        List{
            ForEach(fruitViewModel.fruitsArray) { fruit in
                HStack{
                    Text(String(fruit.count))
                        .foregroundColor(.red)
                    Text(fruit.name)
                        .font(.headline)
                }
                
            }
            .onDelete { indexSet in
                fruitViewModel.deleteFruit(indexSet:indexSet)
            }
        }
        
    }
}

struct ViewModelExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelExample()
    }
}
