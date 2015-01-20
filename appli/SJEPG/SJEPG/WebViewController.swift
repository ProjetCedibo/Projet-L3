//
//  WebViewController.swift
//  SJEPG
//
//  Created by petetin cédric on 20/01/2015.
//  Copyright (c) 2015 Petetin Cédric & Akrach Ibrahim. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        let url = NSURL(string: "http://www.moodle.univ-fcomte.fr")
        
        let request = NSURLRequest(URL: url!)
        
        webView.loadRequest(request)
    }
    
    @IBAction func doRefresh(AnyObject) {
        webView.reload()
    }
    
    
    @IBAction func goBack(AnyObject) {
        webView.goBack()
    }
    
    
    @IBAction func goForward(AnyObject) {
        webView.goForward()
    }
    
    
    @IBAction func stop(AnyObject) {
        webView.stopLoading()
    }
    
    
    

}
