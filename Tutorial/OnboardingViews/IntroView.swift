//
//  IntroView.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct IntroView: View {
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    var body: some View {
        ZStack{
            RadialGradient(colors: [Color.blue, Color.cyan], center: .center, startRadius: 5, endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if !currentUserSignedIn {
                OnboardingView()
            }else{
                ProfileView()
            }
        }
        
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
