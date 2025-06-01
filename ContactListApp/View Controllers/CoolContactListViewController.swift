//
//  CoolContactListViewController.swift
//  ContactListApp
//
//  Created by Олег Зуев on 02.06.2025.
//

import UIKit

class CoolContactListViewController: UITableViewController {
    
    var persons: [Person]!

}

// MARK: - UITableViewDataSource
extension CoolContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let person = persons[indexPath.section]
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "phoneNumber", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = person.phoneNumber
            content.image = UIImage(systemName: "phone")
            cell.contentConfiguration = content
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "email", for: indexPath)
            var content = cell.defaultContentConfiguration()
            content.text = person.email
            content.image = UIImage(systemName: "globe")
            cell.contentConfiguration = content
            
            return cell
        }
    }
}

// MARK: - UITableViewDelegate
extension CoolContactListViewController {
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        40
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



   
