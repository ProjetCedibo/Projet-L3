//
//  Save.swift
//  SJEPG
//
//  Created by petetin cédric on 26/01/2015.
//  Copyright (c) 2015 Petetin Cédric & Akrach Ibrahim. All rights reserved.
//

import UIKit

public class Save {
    
    let userName: String = ""
    let passWord: String = ""
    
    let cookies: String = ""
    let courentSite: String = ""
    
    init(user: String, pass: String){
        self.userName = user
        self.passWord = pass
    }
    
    init(current: String){
        self.courentSite = current
    }
    
    
    
}
