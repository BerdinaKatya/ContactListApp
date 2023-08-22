//
//  ContactInfoViewController.swift
//  ContactApp
//
//  Created by Екатерина Теляубердина on 22.08.2023.
//

import UIKit

final class ContactInfoViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "Email: \(person.email)"
    }
}
