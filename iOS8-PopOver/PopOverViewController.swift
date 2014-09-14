//
//  PopOverViewController.swift
//  iOS8-PopOver
//
//  Created by Mani on 13.09.14.
//  Copyright (c) 2014 Mani. All rights reserved.
//

import UIKit

class PopOverViewController: UIViewController {

    var text: String = "undefined"
    
    @IBOutlet private var mainLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.preferredContentSize = CGSizeMake(200, 200)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .Done, target: self, action: "dismiss:")
        
        mainLabel?.text = self.text
    }
    
    func dismiss(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
