//
//  GradientView.swift
//  Tutorial
//
//  Created by Traian on 09.08.2022.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        Group{
            VStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        //.red
                        LinearGradient(gradient: Gradient(colors: [Color.red, Color.pink, Color.orange]), startPoint: .top, endPoint: .bottom)
                    )
                .frame(width: 300, height: 200)
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(
                        //.red
                        RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: .topLeading, startRadius: 5, endRadius: 400)
                    )
                    .frame(width: 300, height: 200)
            }
            
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
