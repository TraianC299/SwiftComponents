//
//  TabViewExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI

struct TabViewExample: View {
    //you can also change the tab progtamatically using this state value
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
                .tag(0)

            Text("BROWSE TAB")
                .tabItem {
                    Image(systemName: "globe")
                    Text("BROWSE")
                }
                .tag(1)
            Text("PROFILE TAB")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("PROFILE")
                }
                .tag(2)

        }
        //.tabViewStyle(PageTabViewStyle())

    }
}

struct TabViewExample_Previews: PreviewProvider {
    static var previews: some View {
        TabViewExample()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            Text("HOME TAB")
                .font(.largeTitle)
        }
        
        
        
    }
}
