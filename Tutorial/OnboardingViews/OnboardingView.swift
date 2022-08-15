//
//  OnboardingView.swift
//  Tutorial
//
//  Created by Traian on 15.08.2022.
//

import SwiftUI



//MARK: Components
extension OnboardingView {
    private var bottomButton: some View {
        Button(onboardingState==0 ? "Sign up" : onboardingState==3 ? "Finish" : "Next") {
            handleNextButtonPressed()
        }
        .font(.headline)
        .frame(maxWidth:.infinity)
        .padding()
        .background(.white)
        .cornerRadius(10)
        .foregroundColor(.purple)
    }
    
    
    private var welcomeSection: some View{
        VStack(spacing: 40){
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width:100, height:100)
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .underline()
            Text("For quotations that are more than four lines of prose or three lines of verse, place quotations in a free-standing block of text and omit quotation marks. Start the quotation on a new line")
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            Spacer()
            Spacer()

        }
    }
    
    private var addNameSection: some View{
        VStack{
            Spacer()
            Text("What is your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name", text: $nameValue)
                .font(.headline)
                .padding()
                .background(.white)
                .cornerRadius(20)
            Spacer()
        }
    }
    
    private var addAgeSection: some View{
        VStack(spacing:20){
            Spacer()
            Text("What is your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f", ageValue))")
                .font(.title)
                .foregroundColor(.white)
            
            Slider(value: $ageValue, in: 18...100, step: 1)
                .tint(.white)
            Spacer()
        }
    }
    
    private var addGenderSection: some View{
        VStack(spacing:20){
            Spacer()
            Text("What is your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
         
            
            Picker(selection: $genderValue) {
                Text("Male").tag("male")
                Text("Female").tag("female")

            } label: {
                Text("Choose your gender")
                    .font(.largeTitle)
                    .padding()
                    .background(.white.opacity(0.5))
                    .foregroundColor(.purple)
            }
            .pickerStyle(MenuPickerStyle())

            Spacer()
        }
    }

}





//MARK: Functions
extension OnboardingView {
    func handleNextButtonPressed(){
        switch onboardingState{
        case 1: guard nameValue.count >= 3 else {
            return
        }
       
        default: break
            
        }
        
        
        if onboardingState == 3 {
            signIn()
        }else{
            withAnimation(.spring()){
                onboardingState+=1
            }
        }
    }
    
    func signIn(){
        print(genderValue)
        currentUserName = nameValue
        currentUserAge = ageValue
        currentUserGender = genderValue
        withAnimation(.spring()){
            currentUserSignedIn = true
        }
    }
}

struct OnboardingView: View {
    /*
     0 - welcome screeen
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    @State var nameValue: String = ""
    @State var ageValue: Double = 50
    @State var genderValue: String = ""
    
    
    
    
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge : Double?
    @AppStorage("gender") var currentUserGender : String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false

    let transitionValue: AnyTransition = .asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .leading))


    var body: some View {
        ZStack{
            //conetnt
            ZStack{
                switch onboardingState {
                case 0: welcomeSection.transition(transitionValue)
                case 1: addNameSection.transition(transitionValue)
                case 2: addAgeSection.transition(transitionValue)
                case 3: addGenderSection.transition(transitionValue)

                default: RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
                
            }
            
            
            
            //buttons
            VStack{
                Spacer()
                bottomButton
            }
            .padding()
        }
    }
    
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
            .background(.purple)
    }
}
