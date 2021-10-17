//
//  TableViewController.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 17.10.2021.
//

import UIKit

class TableViewController: UITableViewController {
    
    // MARK: - Properties
    var profiles: [Profile]!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        profiles = [
            Profile(name: "John", secondName: "Smith", age: 33),
            Profile(name: "Michel", secondName: "Jenkins", age: 24),
            Profile(name: "Amma", secondName: "Richards", age: 18)
        ]
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return profiles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell else { return TableViewCell()}
        let profile = profiles[indexPath.row]
        
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        tableViewCell.ageLabel.text = String(profile.age)
        
        return tableViewCell
    }
}
