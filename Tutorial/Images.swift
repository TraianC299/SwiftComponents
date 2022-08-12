//
//  Images.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct Images: View {
    var body: some View {
        VStack{
            Image("kiwi")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
            Image("icon")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 200)
                .foregroundColor(.red)

        }
       
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
