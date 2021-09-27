//
//  ContactInfo.swift
//  RE_ContactList
//
//  Created by Дэвид Бердников on 21.09.2021.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
