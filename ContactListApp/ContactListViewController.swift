//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Олег Зуев on 01.06.2025.
//

import UIKit

final class ContactListViewController: UITableViewController {
    
    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 40
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        let detailsVS = segue.destination as? PersonDetailsViewController
        detailsVS?.person = persons[indexPath.row]
        
    }
    
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let person = persons[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }
}

    
