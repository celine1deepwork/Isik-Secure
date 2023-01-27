//
//  HomeScreen.swift
//  testswiftui
//
//  Created by Muhammet Mehmet Emin Kartal on 2023-01-22.
//

import SwiftUI

struct HomeScreen: View {
  @State
  var errorSecurityArrive  = "false"
  @State
  var onClicked = false
  
  var name :String
  
  var email : String
  
  
  
  var body: some View {
    VStack {
      
      Text("Hello \(email)!")
       
        .font(.system(.title, design: .rounded))
        .foregroundColor(.white)
        .fontWeight(.light)
                
      
      Spacer()
      VStack {
        
        Button("Hazard High"){
          onClicked = true
        }
        .foregroundColor(.white)
        .padding(.vertical, 20)
        .padding(.horizontal, 34)
        .background(Color.red).opacity(0.7)
        .fontWeight(.bold)
        .cornerRadius(50)
        
        Button("Hazar Medium"){
          onClicked = true
        }
        .foregroundColor(.white)
        .padding(.vertical, 20)
        .padding(.horizontal, 25)
        .background(Color.orange).opacity(0.7)
        .fontWeight(.bold)
        .cornerRadius(50)
        
        Button("Hazard Low"){
          onClicked = true
        }
        .foregroundColor(.white)
        .padding(.vertical, 20)
        .padding(.horizontal, 35)
        .background(Color.green).opacity(0.7)
        .fontWeight(.bold)
        .cornerRadius(50)
      }
      Spacer()
    }
      
    .navigationBarBackButtonHidden(true)
    .navigationTitle("Welcome,")
    .background(Image("colorful").edgesIgnoringSafeArea(.all).overlay(Color.black.opacity(0.5)))
    .padding()
    .navigationBarTitleDisplayMode(.large)
    .alert(isPresented: $onClicked) {
        Alert(title: Text("Isık Security"), message: Text(" Request succesfully taken. Waiting duration is about 2-3 mins."),primaryButton: .destructive(Text("Cancel")){
            print("Succesfully Deleted")
        },
              secondaryButton: .default(Text("Confirm"))
        )
    }
    
  }
}
struct HomeScreen_Previews: PreviewProvider {
  static var previews: some View {
    
    NavigationStack {
      HomeScreen(name: "Celine", email: "celine@gmail.com")
    }
    
  }
}

