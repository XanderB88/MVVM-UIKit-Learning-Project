//
//  TableViewCell.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 17.10.2021.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
    
}
