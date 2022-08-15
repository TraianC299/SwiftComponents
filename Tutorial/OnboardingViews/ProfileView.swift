//
//  ProfileView.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI

struct ProfileView: View {
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Int?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    
    func signOut(){
        currentUserName=nil
        currentUserAge=nil
        currentUserGender=nil
        withAnimation(.spring()){
            currentUserSignedIn=false

        }
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Username: \(currentUserName ?? "Your name here")")
            Text("Age: \(currentUserAge ?? 0)")
            Text("Gender: \(currentUserGender ?? "Your gender here")")
            CustomButton(title: "Sign out") {
                signOut()
            }

        }
        .font(.headline)
        .foregroundColor(.white)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
