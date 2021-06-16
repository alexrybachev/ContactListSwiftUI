//
//  SectionList.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct SectionList: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.phone) { person in
                    Section(header: Text(person.fullName).fontWeight(.bold)) {
                        ContactCell(
                            imageName: "phone",
                            personDetail: person.phone
                        )
                        
                        ContactCell(
                            imageName: "tray",
                            personDetail: person.email
                        )
                    }
                    .textCase(.none)
                }
            }
            .navigationTitle("Section List")
        }
    }
}

struct SectionList_Previews: PreviewProvider {
    static var previews: some View {
        SectionList(persons: Person.getContactList())
    }
}
