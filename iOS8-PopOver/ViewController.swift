//
//  ViewController.swift
//  iOS8-PopOver
//
//  Created by Mani on 13.09.14.
//  Copyright (c) 2014 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate
{
    func showPopover(base: UIView, text: String)
    {
        if let viewController = self.storyboard?.instantiateViewControllerWithIdentifier("popover") as? PopOverViewController {
            
            viewController.text = text
            
            let navController = UINavigationController(rootViewController: viewController)
            navController.modalPresentationStyle = .Popover
            
            if let pctrl = navController.popoverPresentationController {
                pctrl.delegate = self
                
                pctrl.sourceView = base
                pctrl.sourceRect = base.bounds
                
                self.presentViewController(navController, animated: true, completion: nil)
            }
        }
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
    
    @IBAction func onShow(sender: UIButton)
    {
        self.showPopover(sender, text: "Hello World :)")
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
}

