//
//  ViewController.swift
//  OTPScreen
//
//  Created by Vijay Parmar on 16/09/20.
//  Copyright © 2020 Dashu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtopt: UITextField!
    
    
    @IBOutlet weak var btnsub: UIButton!
    var count=0
    override func viewDidLoad() {
        super.viewDidLoad()
        txtopt.layer.borderWidth = 1
        txtopt.layer.cornerRadius = 10
        txtopt.layer.borderColor = UIColor.white.cgColor
        txtopt.textColor = UIColor.white
        txtopt.textAlignment = .center
        
        btnsub.layer.borderWidth = 1
        btnsub.layer.cornerRadius = 10
        btnsub.layer.borderColor = UIColor.white.cgColor
        
        
    }
    @IBAction func text_change(_ sender: Any){
        count=count+1
        if txtopt.text?.count == 4
        {
            txtopt.resignFirstResponder()
        }
    }
    
    @IBAction func btn_click(_ sender: Any) {
        
        if txtopt.text == "1604"
        {
            txtopt.textColor=UIColor.green
        }else{
            txtopt.textColor=UIColor.red
        }
    }
    
    
    
}

