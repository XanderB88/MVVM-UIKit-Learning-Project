//
//  TableViewCellViewModelType.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 18.10.2021.
//

import Foundation


protocol TableViewCellViewModelType: AnyObject {
    
    var fullName: String { get }
    var age: String { get }
    
}
