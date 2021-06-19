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
                ForEach(persons) { person in
                    Section(header: Text(person.fullName).fontWeight(.bold)) {
                        ContactCell(
                            imageName: SystemImage.phone.rawValue,
                            personDetail: person.phone
                        )
                        
                        ContactCell(
                            imageName: SystemImage.tray.rawValue,
                            personDetail: person.email
                        )
                    }
                }
                .textCase(.none)
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
