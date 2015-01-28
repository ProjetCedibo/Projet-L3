//
//  LogInViewController.swift
//  SJEPG
//
//  Created by petetin cédric on 27/01/2015.
//  Copyright (c) 2015 Petetin Cédric & Akrach Ibrahim. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    
    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var identifiantTextField: UITextField!
    
    @IBOutlet weak var MDPTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "Connexion"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func connectionPush(sender: UIButton) {
        println("yolo")
        if identifiantTextField.text.isEmpty && MDPTextField.text.isEmpty {
            println("vide")
            showAlert()
        }else{
            println("User : \(identifiantTextField.text)")
        }
    }
    
    func showAlert(){
        let alertController = UIAlertController(title: "alert", message:
            "vous n'aver pas remplie les champs!", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
