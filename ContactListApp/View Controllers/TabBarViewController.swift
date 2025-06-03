//
//  TabBarViewController.swift
//  ContactListApp
//
//  Created by Олег Зуев on 03.06.2025.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        providePersons()
    }
    
    private func providePersons() {
        let persons = Person.getPersons()
        
        let contactListVC = self.viewControllers?.first as? ContactListViewController
        contactListVC?.persons = persons
        
        let coolContactListVC = self.viewControllers?.last as? CoolContactListViewController
        coolContactListVC?.persons = persons
    }
}
