//
//  ViewModel.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 17.10.2021.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var profiles = [
        Profile(name: "John", secondName: "Smith", age: 33),
        Profile(name: "Michel", secondName: "Jenkins", age: 24),
        Profile(name: "Amma", secondName: "Richards", age: 18)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
    
}
