//
//  AsyncImageExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct AsyncImageExample: View {
    let url = URL(string: "https://picsum.photos/500")
    var body: some View {
        AsyncImage(url: url, content: {returnedImage in
            returnedImage
                .resizable()
                .frame(width:300, height:300)
                .scaledToFit()

            
        } , placeholder: {
            ProgressView()
        })
    }
}

struct AsyncImageExample_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageExample()
    }
}
