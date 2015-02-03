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
        //ProgressView.shared.showProgressView(view)
        /*var DeviceID = "test"
        let URL: NSURL = NSURL(string: "http://localhost:8888/php/register-user.php")!
        let request:NSMutableURLRequest = NSMutableURLRequest(URL:URL)
        request.HTTPMethod = "POST"
        request.HTTPBody = DeviceID.dataUsingEncoding(NSUTF8StringEncoding);
        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue()){
            (response, data, error) in
            var output = NSString(data: data, encoding: NSUTF8StringEncoding) // new output variable
            var array = self.JSONParseArray(output)
        }*/
        
        //ProgressView.shared.hideProgressView()
    }
    
    
    // MARK: Button actions
    
    @IBAction func ShowLeftMenu(sender: AnyObject) {
        delegate?.toggleLeftPanel?()
    }

}
