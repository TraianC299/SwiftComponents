//
//  ScrollViewExample.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct ScrollViewExample: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true, content: {
            LazyHStack(spacing:10){
                ForEach(1..<10, content: {index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width:300, height:300)
                        .cornerRadius(20)
                })
            }
        })
    }
}

struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
