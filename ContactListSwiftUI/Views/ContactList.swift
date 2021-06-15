//
//  ContactList.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct ContactList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons, id: \.phone) { person in
                NavigationLink(destination: PersonDetail(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Person.getContactList())
    }
}
