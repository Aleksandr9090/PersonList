//
//  Person.swift
//  PersonList
//
//  Created by Aleksandr on 24.03.2022.
//

import Foundation

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

 
extension Person{
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataManager.shared.firstNames.shuffled()
        let lastNames = DataManager.shared.lastNames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            emails.count,
            phoneNumbers.count
        )
        for index in 0..<iterationCount {
            let person = Person(
                firstName: firstNames[index],
                lastName: lastNames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index])
            
            persons.append(person)
        }
        
        return persons
    }
}

enum Contacts: String {
    case phoneNumber = "phone"
    case email = "email"
}

    
    
    
    






