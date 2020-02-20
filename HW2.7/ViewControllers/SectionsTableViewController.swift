//
//  SectionsTableViewController.swift
//  HW2.7
//
//  Created by Admin on 20.02.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import UIKit

class SectionsTableViewController: UITableViewController {
    
    let persons = Person.newPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = persons[section]
        return person.name + " " + person.lastName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = indexPath.row == 0 ? person.email : person.phoneNumber
        
        return cell
    }
    
}
