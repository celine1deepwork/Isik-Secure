//
//  ContentView.swift
//  testswiftui
//
//  Created by Muhammet Mehmet Emin Kartal on 2023-01-22.
//

import SwiftUI

extension Bool {
  var opposite: Bool {
    return !self
  }
}




struct ContentView: View {
  
  @State
  var email: String = ""
  
  
  @State
  var password: String = ""
  
  @State
  var signedUp = false
  
  @State
  var hasSignupError = false
  
  @State
  var signupError = ""
  
  
  var body: some View {
    NavigationStack {
      
      VStack(spacing: 26.0) {
        VStack {
          TextField("Email", text: $email)
            .textContentType(.emailAddress)
            .padding(4)
            .background(Color.white.opacity(0.3))
            .cornerRadius(8)
          SecureField("Password", text: $password)
            .padding(4)
            .background(Color.white.opacity(0.3))
            .cornerRadius(8)
        }
        NavigationLink("Sign In") {
          HomeNavigation(email: self.email)
        }
        .disabled(email.isEmpty || password.isEmpty)
        .foregroundColor(.white)
        .padding(.vertical, 5)
        .padding(.horizontal, 16)
        .background(Color.purple)
        .cornerRadius(16)
        
        Button("Sign Up") {
          if(email.count < 1 && !(email.contains("@"))) { 
            signupError = "Please enter an valid mail"
            hasSignupError = true
            return
          }
          
          // şifre kontrolü
          if(password.count < 9) {
            signupError = "Please enter an valid password"
            hasSignupError = true
            return
          }
          signedUp = true
        }
        .foregroundColor(.white)
        .padding(.vertical, 5)
        .padding(.horizontal, 16)
        .background(Color.purple)
        .cornerRadius(16)
        .alert(isPresented: $signedUp) {
          Alert(title: Text("Succesfully registered"), message: Text(" You may sign-in"), dismissButton: .cancel())
        }
      }
      .padding()
      .navigationTitle(Text("Login"))
      .navigationBarTitleDisplayMode(.large)
      
      .alert(isPresented: $hasSignupError) {
        Alert(title: Text("SignUp Error"), message: Text(signupError), dismissButton: .cancel())
      }
      .padding(.horizontal, 32)
      .background(Color.white.opacity(0.6))
      .cornerRadius(16)
      .padding(.horizontal, 32)
      .background(Image("pt").edgesIgnoringSafeArea(.all).overlay(Color.blue.opacity(0.1)))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
