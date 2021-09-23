//
//  Contact.swift
//  RE_ContactList
//
//  Created by Дэвид Бердников on 21.09.2021.
//


struct Person {
    let name: String
    let secondName: String
    var email: String
    var phone: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let names = Contact.shared.names.shuffled()
        let secondNames = Contact.shared.secondNames.shuffled()
        let emails = Contact.shared.emails.shuffled()
        let phones = Contact.shared.phones.shuffled()
        
        for index in 0..<names.count {
            let contact = Person(
                name: names[index],
                secondName: secondNames[index],
                email: emails[index],
                phone: phones[index]
            )
            persons.append(contact)
        }
        return persons
    }
}

