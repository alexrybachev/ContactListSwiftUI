//
//  PersonDetail.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct PersonDetail: View {
    
    let person: Person
    
    var body: some View {
        Form {
            HStack {
                Spacer()
                Image(systemName: SystemImage.person.rawValue)
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding([.top])
                Spacer()
            }
            
            ContactCell(
                imageName: SystemImage.phone.rawValue,
                personDetail: person.phone
            )
            
            ContactCell(
                imageName: SystemImage.tray.rawValue,
                personDetail: person.email
            )
        }
        .navigationTitle(person.fullName)
    }
    
}

struct PersonDetail_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetail(person: Person.getContactList().first!)
    }
}
