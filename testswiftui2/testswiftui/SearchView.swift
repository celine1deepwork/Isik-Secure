//
//  SearchView.swift
//  testswiftui
//
//  Created by Celine Dilara Ozdemir on 27.01.2023.
//

import SwiftUI

struct SearchView: View {
  
  var email: String
   var listOfCall = contactList
    @State
    var searchText = ""
    var contacts : [String]{
        let lcContact = listOfCall.map{$0.lowercased()}
        return searchText == "" ? lcContact : lcContact.filter{$0.contains(searchText.lowercased())}
    }
  
  var body: some View {
      NavigationView{
          List{
              ForEach(contacts,id : \.self ){ contact in
                  HStack{
                      Text(contact.capitalized)
                      Spacer()
                      Image(systemName: "person.fill")
                          .foregroundColor(Color.purple )
                  }
                  .padding()
              }
          }
          .searchable(text:  $searchText)
              .navigationTitle("Contacts")
               
      }

  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
      SearchView(email: "defaultMail@gmail.com")
  }
}
