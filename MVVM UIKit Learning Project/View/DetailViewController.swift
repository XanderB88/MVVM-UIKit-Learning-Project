//
//  DetailViewController.swift
//  MVVM UIKit Learning Project
//
//  Created by Alexander on 18.10.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
        guard let viewModel = viewModel else { return }
        self.textLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel?.age.bind(listener: { [unowned self] in
            guard let string = $0 else { return }
            self.textLabel.text = string
        })
        
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "Some new value"
        }
    }
    
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }
}
