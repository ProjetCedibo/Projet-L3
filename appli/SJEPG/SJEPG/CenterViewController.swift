//
//  ViewController.swift
//  SJEPG
//
//  Created by petetin cédric on 15/01/2015.
//  Copyright (c) 2015 Petetin Cédric & Akrach Ibrahim. All rights reserved.
//

import UIKit
import Foundation

@objc
protocol CenterViewControllerDelegate {
    optional func toggleLeftPanel()
    optional func collapseSidePanels()
}


class CenterViewController: UIViewController {

    
    var delegate: CenterViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad();
        //ProgressView.shared.showProgressView(view)
        let UUID = UIDevice.currentDevice().identifierForVendor.UUIDString
        var bodyData = "DeviceID=\(UUID)"
        println(bodyData)
        var url: NSURL = NSURL(string: "http://localhost:8888/php/register-user.php")!
        var request:NSMutableURLRequest = NSMutableURLRequest(URL:url)
        request.HTTPMethod = "POST"
        request.HTTPBody = bodyData.dataUsingEncoding(NSUTF8StringEncoding);
        
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()){
                
                (response, data, error) in
                
                println(response)
        }
        
        //ProgressView.shared.hideProgressView()
    }
    
    
    
    // MARK: Button actions
    
    @IBAction func ShowLeftMenu(sender: AnyObject) {
        delegate?.toggleLeftPanel?()
    }

}
