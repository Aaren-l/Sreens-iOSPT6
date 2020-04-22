//
//  NumberedViewController.swift
//  screens-iospt6
//
//  Created by Aaren Lopez on 4/21/20.
//  Copyright © 2020 Aaren Lopez. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        //When presented modally
        // self.ddismiss(animated: true)
        
       // self.navigationController?.popViewController(animated: true)
        
        //to go back to first controller on stack (root view controller)
        self.navigationController?.popViewController(animated: true)
    }
    
}
