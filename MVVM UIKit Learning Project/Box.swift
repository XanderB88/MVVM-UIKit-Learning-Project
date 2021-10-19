//
//  Box.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 19.10.2021.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> ()
    var listener: Listener?
   
    var value: T {
        didSet {
            listener?(value)
        }
    }
    
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
    
}
