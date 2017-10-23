//
//  ViewController.swift
//  GWSimpleAlert
//
//  Created by Gilwan Ryu on 10/23/2017.
//  Copyright (c) 2017 Gilwan Ryu. All rights reserved.
//

import UIKit
import GWSimpleAlert

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GWAlert(title: "2", message: "2", style: .alert)
            .addTextField(placeholder: "33", keyboardType: .default)
            .setActionOK(title: "333444", complete: { _ in
                
            })
            .show()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

