//
//  DetailViewController.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 18.10.2021.
//

import UIKit

class DetailViewController: UITableViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    
}
