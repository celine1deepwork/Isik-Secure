//
//  HomeNavigation.swift
//  testswiftui
//
//  Created by Muhammet Mehmet Emin Kartal on 2023-01-26.
//

import SwiftUI

struct HomeNavigation: View {
  
  var email: String
    @State
    var searchText = ""
  
  var body: some View {
    TabView {
      HomeScreen(name: "test", email: self.email)
        .tabItem {
          Label("Home", systemImage: "house")
        }
      
        CallScreen(email: self.email)
        .tabItem {
          Label("Call", systemImage: "phone")
        }
      
      
        SearchView(email: self.email)
        .tabItem {
          Label("Search", systemImage: "magnifyingglass")
        }
      
      
      
        ProfileScreen(email: self.email)
        .tabItem {
          Label("Profile", systemImage: "person.fill")
        }
    }
  }
}

struct HomeNavigation_Previews: PreviewProvider {
  static var previews: some View {
    
    NavigationStack {
      HomeNavigation(email: "test@test.com")
    }
  }
}
