//
//  SecondCntactsTableViewController.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 23.08.2023.
//

import UIKit

final class SecondCntactsTableViewController: UITableViewController {

    var contacts: [Person]!

    // MARK: - UITableViewDataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondContactCell", for: indexPath)
        let person = contacts[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        switch indexPath.row {
        case 0:
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = person.email
            content.image = UIImage(systemName: "tray")
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
