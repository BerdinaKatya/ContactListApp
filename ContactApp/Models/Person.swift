//
//  Person.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 22.08.2023.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        let dataStore = DataStore.shared
        var contactList: [Person] = []
        
        for index in 0..<dataStore.names.count {
            contactList.append(Person(
                name: dataStore.names[index],
                surname: dataStore.surnames[index],
                phoneNumber: dataStore.phoneNumbers[index],
                email: dataStore.emails[index])
            )
        }
        return contactList
    }
}

