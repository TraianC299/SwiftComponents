//
//  ScrollView.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct ScrollView: View {
    var body: some View {
        ScrollView {
                VStack(alignment: .leading) {
                    ForEach(0..<100) {
                        Text("Row \($0)")
                    }
                }
            }
        
        
        
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView()
    }
}
