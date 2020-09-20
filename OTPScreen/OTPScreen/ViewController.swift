//
//  ViewController.swift
//  OTPScreen
//
//  Created by Vijay Parmar on 16/09/20.
//  Copyright © 2020 Dashu. All rights reserved.
// mmmmmmm

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var txtopt: UITextField!
    
    @IBOutlet weak var lbl_timer: UILabel!
    
    @IBOutlet weak var btnsub: UIButton!
    
    @IBOutlet weak var btnresend: UIButton!
    
  
    var timer:Timer?
    var count=6
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
        btnresend.isHidden=true
        btnresend.layer.cornerRadius=10
        btnresend.layer.borderWidth=1
        btnresend.layer.borderColor=UIColor.white.cgColor
        //Start Timer
        timer_init()
        //Button Click By coding
        btnresend.addTarget(self, action: #selector(resendClick), for: .touchUpInside)
        
    }
    
    //Timer Init Function
    func timer_init(){
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(update) , userInfo: nil , repeats: true)
    }
    
    //Resend Click
    @objc func resendClick(){
        btnresend.isHidden=true
        timer_init()
    }
  
    //Update Timer label Value
   @objc func update(){
        if count>0 {
            count-=1
            lbl_timer.text = String("\(count)")
            
            if count == 0
            {
                btnresend.isHidden=false
                timer?.invalidate()
                count=7
            }
        }
    }
    
    //Text Change Action
    @IBAction func text_change(_ sender: Any){
        if txtopt.text?.count == 4
        {
            txtopt.resignFirstResponder()
        }
    }
    
    //Submit Button Click Action
    @IBAction func btn_click(_ sender: Any) {
        
        if txtopt.text == "1604"
        {
            txtopt.textColor=UIColor.green
            btnresend.isHidden=true
            timer?.invalidate()
            lbl_timer.isHidden=true
        }else{
            txtopt.textColor=UIColor.red
        }
    }
    
//    @IBAction func Resnd_click(_ sender: Any) {
//        btnresend.isHidden=true
//         timer_init()
//    }
    
    
}

