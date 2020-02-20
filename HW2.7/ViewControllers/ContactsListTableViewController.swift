//
//  ContactsListTableViewController.swift
//  HW2.7
//
//  Created by Admin on 20.02.2020.
//  Copyright © 2020 UshakovAndrey. All rights reserved.
//

import UIKit

class ContactsListTableViewController: UITableViewController {
    
    let persons = Person.newPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let person = persons[indexPath.row]
        
        cell.textLabel?.text = person.name + " " + person.lastName
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailPersonViewController
            detailVC.detailInfo = persons[indexPath.row]
        }
    }
}
