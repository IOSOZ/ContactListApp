//
//  PersonDetailsViewController.swift
//  ContactListApp
//
//  Created by Олег Зуев on 01.06.2025.
//

import UIKit

class PersonDetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabel.text = person.phoneNumber
        emailLabel.text = person.email
        navigationItem.title = person.fullName

    }
    
}
