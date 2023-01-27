//
//  ProfileScreen.swift
//  testswiftui
//
//  Created by Muhammet Mehmet Emin Kartal on 2023-01-26.
//

import SwiftUI

struct ProfileScreen: View {
  
  var email: String
  
  var body: some View {
    VStack {
      Text("Profile")
      List {
        Section("User Info") {
          Text(self.email)
        }
        
        
        Button("About") {
          
        }
        
        
        Button("Privacy Policy") {
          
        }
        Button("Settings") {
            
        }
        
        
        Button("Logout") {
            ContentView(email: self.email )
        }
        .foregroundColor(.red)
        
      }
    }
  }
}

struct ProfileScreen_Previews: PreviewProvider {
  static var previews: some View {
    ProfileScreen(email: "test@test.com")
  }
}
