//
//  Contact.swift
//  RE_ContactList
//
//  Created by Дэвид Бердников on 21.09.2021.
//


struct Person {
    let name: String
    let secondName: String
    let email: String
    let phone: String
}

extension Person {
    func getPerson() -> [Person] {
        var contacts: [Person] = []
        
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
            contacts.append(contact)
        }
        return contacts
    }
}

