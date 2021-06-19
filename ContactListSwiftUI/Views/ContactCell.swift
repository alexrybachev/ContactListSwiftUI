//
//  ContactCell.swift
//  ContactListSwiftUI
//
//  Created by Aleksandr Rybachev on 15.06.2021.
//

import SwiftUI

struct ContactCell: View {
    let imageName: String
    let personDetail: String
    
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(personDetail)
        }
    }
}

struct ContactCell_Previews: PreviewProvider {
    static var previews: some View {
        ContactCell(imageName: SystemImage.person.rawValue, personDetail: SystemImage.person.rawValue)
    }
}
