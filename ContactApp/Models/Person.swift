//
//  Person.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 22.08.2023.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonsList() -> [Person] {
        let dataStore = DataStore()
        var contactList: [Person] = []
        
        for index in 0...dataStore.names.count - 1 {
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

