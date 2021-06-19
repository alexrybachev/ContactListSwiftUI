//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct MainView: View {
    
    private let persons = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactList(persons: persons)
                .tabItem {
                    Image(systemName: SystemImage.persons.rawValue)
                    Text("Contacts")
                }
            
            SectionList(persons: persons)
                .tabItem {
                    Image(systemName: SystemImage.phone.rawValue)
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
