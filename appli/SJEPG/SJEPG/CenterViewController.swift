//
//  ViewController.swift
//  SJEPG
//
//  Created by petetin cédric on 15/01/2015.
//  Copyright (c) 2015 Petetin Cédric & Akrach Ibrahim. All rights reserved.
//

import UIKit

@objc
protocol CenterViewControllerDelegate {
    optional func toggleLeftPanel()
    optional func collapseSidePanels()
}


class CenterViewController: UIViewController {

    
    var delegate: CenterViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Check to see if this is an iOS 8 device.
        //ProgressView.shared.showProgressView(view)
        
        
        
        //ProgressView.shared.hideProgressView()
    }
    
    
    // MARK: Button actions
    
    @IBAction func ShowLeftMenu(sender: AnyObject) {
        delegate?.toggleLeftPanel?()
    }

}
