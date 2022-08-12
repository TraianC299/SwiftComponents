//
//  ForLoops.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct ForLoops: View {
    let bonfio: [String] = ["Hello", "Hi","HiHi"]
    
    
    var body: some View {
        VStack {
            ForEach(bonfio.indices, content:{index in
                Text("\(bonfio[index]):\(index)")
            })
        }
    }
}

struct ForLoops_Previews: PreviewProvider {
    static var previews: some View {
        ForLoops()
    }
}
