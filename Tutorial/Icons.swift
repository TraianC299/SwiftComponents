//
//  Icons.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct Icons: View {
    var body: some View {
        VStack{
            Image(systemName: "heart.fill")
                .font(.title)
                .foregroundColor(.red)
            
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
        }
        
    }
}

struct Icons_Previews: PreviewProvider {
    static var previews: some View {
        Icons()
    }
}
