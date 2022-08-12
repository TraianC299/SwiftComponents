//
//  AnimationsExample.swift
//  Tutorial
//
//  Created by Traian on 10.08.2022.
//

import SwiftUI

struct AnimationsExample: View {
    @State var isAnimatedRectangle:Bool = true
    @State var isAnimatedCircle:Bool = true


    var body: some View {
        VStack {
            Spacer()

            HStack {
                CustomButton(title:"Toggle Rectangle"){
                    withAnimation(.default){
                        isAnimatedRectangle.toggle()
                    }
                }
                
                Spacer()
                Rectangle()
                    .fill(isAnimatedRectangle ? .blue: .red)
                    .cornerRadius(20)
                    .frame(
                        width:isAnimatedRectangle ? 100 : 150,
                        height:isAnimatedRectangle ? 100 : 150
                    )
                Spacer()

            }
            Spacer()
            HStack {
                CustomButton(title:"Toggle Circle"){
                    isAnimatedCircle.toggle()

                }
                Spacer()
                Circle()
                    .fill(isAnimatedCircle ? .blue: .red)
                    .cornerRadius(20)
                    .frame(
                        width:isAnimatedCircle ? 100 : 150,
                        height:isAnimatedCircle ? 100 : 150
                    )
                    .animation(Animation.default, value: isAnimatedCircle)
                Spacer()

            }
            Spacer()


        }
    }
}

struct AnimationsExample_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsExample()
    }
}
