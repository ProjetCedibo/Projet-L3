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
        self.title = "Connexion"//Modification du titre de la view
        var user: String? = NSUserDefaults.standardUserDefaults().stringForKey("userName")
        var pass: String? = NSUserDefaults.standardUserDefaults().stringForKey("passWord")
        if user != nil && pass != nil{
            var userText=NSAttributedString(string: user!)
            identifiantTextField.attributedText=userText
            var passText = NSAttributedString(string: pass!)
            MDPTextField.attributedText = passText
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Referme le clavier au clique sur la view
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //Bouton de connexion pressé
    @IBAction func connectionPush(sender: UIButton) {
        if identifiantTextField.text.isEmpty || MDPTextField.text.isEmpty {
            showAlert()
        }else{
            println("User : \(identifiantTextField.text)")
            println("Pass : \(MDPTextField.text)")
            var userName = NSUserDefaults.standardUserDefaults()
            userName.setValue(identifiantTextField.text, forKey: "userName")
            userName.synchronize()
            var passWord = NSUserDefaults.standardUserDefaults()
            passWord.setValue(MDPTextField.text, forKey: "passWord")
            passWord.synchronize()
            
        }
    }
    
    //Fonction affichant l'alert (les champs sont mal rempli)
    func showAlert(){
        let alertController = UIAlertController(title: "Erreur !", message:
            "Vous n'avez pas rempli tous les champs !", preferredStyle: UIAlertControllerStyle.Alert)
        alertController.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default,handler: nil))
        
        self.presentViewController(alertController, animated: true, completion: nil)
    }
}
