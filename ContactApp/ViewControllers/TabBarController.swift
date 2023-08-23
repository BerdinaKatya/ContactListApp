//
//  TabBarController.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 23.08.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    private let contactList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact List"
        getContactsList()
    }
    
    private func getContactsList() {
        guard let tabBarVC = self.viewControllers else { return }
        guard let contactListVC = tabBarVC.first as? ContactListViewController else { return }
        guard let secondContactsVC = tabBarVC.last as? SecondCntactsTableViewController else { return }

        contactListVC.contacts = contactList
        secondContactsVC.contacts = contactList
    }
}
