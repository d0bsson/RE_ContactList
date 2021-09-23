//
//  TabBarViewController.swift
//  RE_ContactList
//
//  Created by Дэвид Бердников on 23.09.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    var persons = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        tranferData()
    }

    private func tranferData() {
        guard let contactTableVC = viewControllers?.first as? ContactTableViewController else { return }
        guard let contactWithSectionsVC = viewControllers?.last as? ContactWithSectionsTableTableViewController else { return }
        
        contactTableVC.persons = persons
        contactWithSectionsVC.persons = persons
    }
}
