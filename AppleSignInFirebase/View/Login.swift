//
//  Login.swift
//  AppleSignInFirebase
//
//  Created by Danh Tu on 06/10/2021.
//

import SwiftUI
import AuthenticationServices

struct Login: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
                .overlay(Color.black.opacity(0.35))
                .ignoresSafeArea()
            
            VStack(spacing: 25) {
                Text("Unsplash")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                Spacer()
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 30) {
                    Text("Largest\nImages Library")
                        .font(.system(size: 45))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                    Text("The internet's source of freely-usable images. Powered by creators everywhere for you.")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                // Login Button
                SignInWithAppleButton { (request) in
                    // Requesting parameters from apple login
                    request.requestedScopes = [.email, .fullName]
                } onCompletion: { (result) in
                    // Getting error or success
                    switch result {
                    case .success(let user):
                        print("Success!")
                        // Do login with Firebase
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
                .signInWithAppleButtonStyle(.white)
                .frame(height: 55)
                .clipShape(Capsule())
                .padding(.horizontal)
                .offset(y: -30)
            }
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
