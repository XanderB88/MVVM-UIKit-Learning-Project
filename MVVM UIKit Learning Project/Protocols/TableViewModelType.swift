//
//  TableViewModelType.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 17.10.2021.
//

import Foundation


protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
