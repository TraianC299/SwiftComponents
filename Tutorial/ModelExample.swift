//
//  ModelExample.swift
//  Tutorial
//
//  Created by Traian on 13.08.2022.
//

import SwiftUI


struct UserModel: Identifiable {
    let displayName: String
    let userName: String
    let followers: Int
    let id: String = UUID().uuidString
}
struct ModelExample: View {
    
    @State var users : [UserModel ] = [
    //"Andrei", "Ciorap", "Salam", "Florin"
        UserModel(displayName: "Grigore", userName: "Vieru", followers: 22),
        UserModel(displayName: "Anrewi", userName: "SALAM", followers: 554),
        UserModel(displayName: "Berbec", userName: "Igorovish", followers: 332)
    ]
    var body: some View {
        List{
            
            ForEach(users) { user in
                HStack {
                    Circle()
                        .frame(width: 35, height:35)
                    VStack(alignment: .leading){
                        Text(user.displayName)
                        Text("@\(user.displayName)")
                            .font(.caption)
                    }
                }
                .padding(.vertical, 10)
            }
            
        }
    }
}

struct ModelExample_Previews: PreviewProvider {
    static var previews: some View {
        ModelExample()
    }
}
