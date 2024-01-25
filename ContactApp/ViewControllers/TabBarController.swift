//
//  TabBarController.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 23.08.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
        passContactsList()
    }
    
    private func passContactsList() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let secondContactsVC = viewControllers?.last as? SecondCntactsTableViewController else { return }

        let contactList = Person.getPersonsList()
        contactListVC.contacts = contactList
        secondContactsVC.contacts = contactList
    }
}
