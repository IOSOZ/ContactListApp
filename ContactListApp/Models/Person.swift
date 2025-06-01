//
//  Person.swift
//  ContactListApp
//
//  Created by Олег Зуев on 31.05.2025.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    init(name: String, surname: String, email: String, phoneNumber: String) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phoneNumber = phoneNumber
    }
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        var usedNames: Set<String> = []
        var usedSurnames: Set<String> = []
        var usedEmails: Set<String> = []
        var usedPhoneNumbers: Set<String> = []
        
        while persons.count < 15 {
        
            guard let name = DataStore.shared.names.randomElement(),
                  let surname = DataStore.shared.surnames.randomElement(),
                  let email = DataStore.shared.emails.randomElement(),
                  let phoneNumber = DataStore.shared.phoneNumbers.randomElement()
            else { continue }
            
            guard !usedNames.contains(name),
                  !usedSurnames.contains(surname),
                  !usedEmails.contains(email),
                  !usedPhoneNumbers.contains(phoneNumber)
                   else { continue }
            
            let person = Person(
                name: name,
                surname: surname,
                email: email,
                phoneNumber: phoneNumber
            )
            
            usedNames.insert(name)
            usedSurnames.insert(surname)
            usedEmails.insert(email)
            usedPhoneNumbers.insert(phoneNumber)
            
            persons.append(person)
        }
        return persons
    }
}


