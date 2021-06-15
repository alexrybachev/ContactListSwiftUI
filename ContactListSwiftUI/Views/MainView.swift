//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct MainView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: "person.3")
                    Text("Contacts")
                }
            
            SectionList(persons: persons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Sections")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
