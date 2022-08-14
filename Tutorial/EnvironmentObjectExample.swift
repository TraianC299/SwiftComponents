//
//  EnvironmentObjectExample.swift
//  Tutorial
//
//  Created by Traian on 14.08.2022.
//

import SwiftUI



class EnvironmentViewModel: ObservableObject{
    @Published var dataArray: [String] = []
    
    init() {
        getData()
    }
    
    func getData(){
        self.dataArray.append(contentsOf : ["Iphone", "Ipad", "Ipod", "Imac"])
    }
}
struct EnvironmentObjectExample: View {
    @StateObject var environmentViewModel:EnvironmentViewModel = EnvironmentViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(environmentViewModel.dataArray, id: \.self) { item in
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
        }
        //by addding this method all the subviews of this navview will be able to ccess this object, I used it in the final view
        .environmentObject(environmentViewModel)
        
        
    }
}


struct DetailView: View {
    let selectedItem: String
    var body: some View {
        ZStack{
            Color.orange.ignoresSafeArea()
            NavigationLink {
                FinalView()
            } label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .background(.white)
                    .cornerRadius(100)
            }

            

        }
    }
}



struct FinalView: View {
    @EnvironmentObject var environmentViewModel: EnvironmentViewModel
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.red, Color.orange], startPoint: .leading, endPoint: .trailing)
                .ignoresSafeArea()
            VStack{
                ForEach(environmentViewModel.dataArray, id: \.self) { element in
                    Text(element)
                        .font(.title2)
                }
            }
        }
    }
}

struct EnvironmentObjectExample_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectExample()
    }
}
