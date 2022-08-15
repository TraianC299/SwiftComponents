//
//  BadgesExample.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct BadgesExample: View {
    var body: some View {
        TabView{
            Color.red
            
                .tabItem {
                    Image(systemName: "heart.fill")
                    
                    Text("Hello")
                }
            
                .badge(4)
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
            Color.green
                .ignoresSafeArea()

                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
        }
    }
}

struct BadgesExample_Previews: PreviewProvider {
    static var previews: some View {
        BadgesExample()
    }
}
