//
//  TableViewCellViewModel.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 18.10.2021.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
       
    private var profile: Profile
    
    var fullName: String {
        return profile.name + " " + profile.secondName
    }
    
    var age: String {
        return String(profile.age)
    }
    
    init(profile: Profile) {
        self.profile =  profile
    }
    
}
