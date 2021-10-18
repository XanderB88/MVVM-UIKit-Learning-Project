//
//  TableViewModelType.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 17.10.2021.
//

import Foundation


protocol TableViewViewModelType {
    
    func numberOfRows() -> Int
    func cellViewModel (forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    func selectRow(atIndexPath indexPath: IndexPath)
    
}
 
