//
//  SafeareaExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct SafeareaExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red
                .ignoresSafeArea())
    }
}

struct SafeareaExample_Previews: PreviewProvider {
    static var previews: some View {
        SafeareaExample()
    }
}
