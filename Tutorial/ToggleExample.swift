//
//  ToggleExample.swift
//  Tutorial
//
//  Created by Traian on 12.08.2022.
//

import SwiftUI

struct ToggleExample: View {
    @State var toggleValue: Bool = false
    var body: some View {
        VStack {
            HStack{
                Text("Status")
                Spacer()
                Text(toggleValue ? "On" : "Off")
            }
            
            Toggle(isOn: $toggleValue) {
                Text("Change status")
            }
            .toggleStyle(SwitchToggleStyle(tint: .blue))
            Spacer()
        }
        .padding()
    }
}

struct ToggleExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleExample()
    }
}
