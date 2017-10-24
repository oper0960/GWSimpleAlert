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
        
        GWAlert(title: "Title", message: "Message")
        .addTextField(placeholder: "placeholder", keyboardType: .default)
        .setActionConfirm(title: "ActionTitle", complete: { action in
            // Set Confirm Action
        }, tfHandler: { text in // optional Handler
            // Return TextField Text (optional)
        })
        .setActionCancel(title: "ActionTItle", complete: { action in
            // set Cancel Action
        }).show()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

