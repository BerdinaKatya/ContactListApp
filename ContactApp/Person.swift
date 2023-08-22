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
}

class DataStore {
    let names = [
        "Aaron",
        "Liam",
        "Olivia",
        "Noah",
        "Emma",
        "Oliver",
        "Charlotte",
        "James",
        "Lucas",
        "Mia"
    ]
    
    let surnames = [
        "Wilson",
        "Anderson",
        "Thomas",
        "Taylor",
        "Moore",
        "Jackson",
        "Martin",
        "Lee",
        "Perez",
        "Thompson"
    ]
    
    let phoneNumbers = [
        "9987543678",
        "9827551898",
        "9826441780",
        "9900882543",
        "9766299992",
        "9934002298",
        "9822300034",
        "9033444188",
        "9923476111",
        "9234887110"
    ]
    
    let emails = [
        "dj78@gmail.com",
        "ho_ho@gmail.com",
        "mini@gmail.com",
        "bigbr@gmail.com",
        "gpa45@gmail.com",
        "wu43@gmail.com",
        "ll_b@gmail.com",
        "well@gmail.com",
        "fine@gmail.com",
        "good@gmail.com",
    ]
}
