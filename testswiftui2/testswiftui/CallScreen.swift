//
//  CallScreen.swift
//  testswiftui
//
//  Created by Celine Dilara Ozdemir on 27.01.2023.
//

import SwiftUI

struct CallScreen: View {
  
  var email: String
   var listOfCall = contactList
    @State
    var searchText = ""
    var contacts : [String]{
        let lcContact = listOfCall.map{$0.lowercased()}
        return searchText == " " ? lcContact : lcContact.filter{$0.contains(searchText.lowercased())}
    }
  
  var body: some View {
      VStack {
        Text("Contact ")
        List {
          Section("Emergency Contact") {
             Text("+90 551 164 64 28")
              
          }
          
          
          Button("Health Info") {
              
          }.tabItem(){
              
          }
          
          
          Button("Family Info") {
            
          }
          
          
          Button("Call SOS") {
              ContentView(email: "defaultMail@gmail.com" )
                  
          }
          .foregroundColor(.red)
          
          
        }
      }
    
  }
}

struct CallScreen_Previews: PreviewProvider {
  static var previews: some View {
      CallScreen(email: "defaultMail@gmail.com")
  }
}
