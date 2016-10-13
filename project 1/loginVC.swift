//
//  loginVC.swift
//  project 1
//
//  Created by do duy hung on 10/7/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class loginVC: loginviewBase {
// button
    var signUpButton : UIButton!
    var forgotButton: UIButton!
    var loginButton : UIButton!
// bg img
    //var backgroundImg : UIImageView!
// textfield
    var tf_username : UITextField!
    var tf_password : UITextField!
// label 
    var lbl_user : UILabel!
    var lbl_pass : UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupbackgroundImg()
        createlabel()
        createtextfield()
        createButton()
        
        //navigationController?.setNavigationBarHidden(true, animated: true)
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func createButton(){
        
        //signUpbutton
        
        signUpButton = UIButton()
        signUpButton.setUpLayout(btn: signUpButton)
        signUpButton.setTitle("create an account", for: .normal)
        signUpButton.addTarget(self, action: #selector(createAccount), for: .touchUpInside)
            self.view.addSubview(signUpButton)
        
        //forgotbutton
        forgotButton = UIButton()
        forgotButton.setUpLayout(btn: forgotButton)
        forgotButton.setTitle("Forgot password ?", for: .normal)
        forgotButton.addTarget(self, action: #selector(forgotpassword), for: .touchUpInside)
            self.view.addSubview(forgotButton)
        
        //loginButton
        loginButton = UIButton()
        loginButton.setUpBigButton(btn: loginButton)
        loginButton.setTitle("Login", for: .normal)
        loginButton.addTarget(self, action: #selector(login), for: .touchUpInside)
        self.view.addSubview(loginButton)
        
        //constraints
        signUp_Btn_Constraints()
        forgot_Btn_Constraints()
        login_btn_constraints()
        }
    
    func signUp_Btn_Constraints(){
//MARK: constraints signUp button
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: signUpButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: signUpButton, attribute: .top, relatedBy: .equal, toItem: self.tf_password, attribute: .bottom, multiplier: 1.1, constant: 0)
        let width = NSLayoutConstraint(item: signUpButton, attribute: .width, relatedBy: .equal, toItem: self.self.view, attribute: .width, multiplier: 0.45, constant: 0)
        let height = NSLayoutConstraint(item: signUpButton, attribute: .height, relatedBy: .equal, toItem: self.tf_password, attribute: .height, multiplier: 0.3, constant: 0)
        NSLayoutConstraint.activate([leading,top,width,height])
    }
    func forgot_Btn_Constraints(){
//MARK: contraints forgotbutton
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: forgotButton, attribute: .top, relatedBy: .equal, toItem: self.tf_password, attribute: .bottom, multiplier: 1.1, constant: 0)
        let trailing = NSLayoutConstraint(item: forgotButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -5)
        let leading = NSLayoutConstraint(item: forgotButton, attribute: .leading, relatedBy: .equal, toItem: self.signUpButton, attribute: .trailing, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: forgotButton, attribute: .height, relatedBy: .equal, toItem: self.tf_password, attribute: .height, multiplier: 0.3, constant: 0)
        NSLayoutConstraint.activate([trailing,top,leading,height])
    }
    
//MARK: contraints login button
    func login_btn_constraints(){
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        let top = NSLayoutConstraint(item: loginButton, attribute: .top, relatedBy: .equal, toItem: signUpButton, attribute: .bottom, multiplier: 1.1, constant: 0)
        let trailing = NSLayoutConstraint(item: loginButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let leading = NSLayoutConstraint(item: loginButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let height = NSLayoutConstraint(item: loginButton, attribute: .height, relatedBy: .equal, toItem: signUpButton, attribute: .height, multiplier: 4.0, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    //MARK: textfield
    func createtextfield(){
        //username
        tf_username = UITextField()
        tf_username.setuptf(tf: tf_username)
        tf_username.text = "Username"
        tf_username.isSecureTextEntry = false
        self.view.addSubview(tf_username)
        //password
        tf_password = UITextField()
        tf_password.setuptf(tf: tf_password)
        tf_password.isSecureTextEntry = true
        self.view.addSubview(tf_password)
        constraints_Tf_Username()
        constraints_Tf_Password()
    }
    
    func constraints_Tf_Username(){
        tf_username.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_username, attribute: .leading, relatedBy: .equal, toItem: self.lbl_user, attribute: .trailing, multiplier: 1.0, constant: 5)
        let trailing = NSLayoutConstraint(item: tf_username, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: tf_username, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: self.view.bounds.size.height/3)
        let height = NSLayoutConstraint(item: tf_username, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    func constraints_Tf_Password(){
        tf_password.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: tf_password, attribute: .leading, relatedBy: .equal, toItem: self.lbl_pass, attribute: .trailing, multiplier: 1.0, constant: 5)
        let trailing = NSLayoutConstraint(item: tf_password, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: tf_password, attribute: .top, relatedBy: .equal, toItem: tf_username, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: tf_password, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
//MARK: label
    func createlabel(){
        lbl_user = UILabel()
        lbl_user.text = "Email :"
        lbl_user.setuplabel(lbl: lbl_user)
        self.view.addSubview(lbl_user)
        
        
        lbl_pass = UILabel()
        lbl_pass.text = "Pass :"
        lbl_pass.setuplabel(lbl: lbl_pass)
        self.view.addSubview(lbl_pass)

        //constraints
        constraints_lbl_user()
        constraints_lbl_pass()
    }
    
    func constraints_lbl_user()
    {
        lbl_user.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_user, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_user, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.bounds.size.height/3)
        let height = NSLayoutConstraint(item: lbl_user, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_user, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,width,top,height])
    }
    func constraints_lbl_pass()
    {
        lbl_pass.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: lbl_pass, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 5)
        let top = NSLayoutConstraint(item: lbl_pass, attribute: .top, relatedBy: .equal, toItem: self.lbl_user, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: lbl_pass, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        let width = NSLayoutConstraint(item: lbl_pass, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.1, constant: 0)
        NSLayoutConstraint.activate([leading,width,top,height])
    }

//MARK: action for button
    func createAccount(){
        let createAccountVC = storyboard?.instantiateViewController(withIdentifier: "createAccountVC") as! CreateAccountVC

        //navigationController?.pushViewController(createAccountVC, animated: true)
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionPush
        self.navigationController?.view.layer.add(transition, forKey: nil)
        self.navigationController?.pushViewController(createAccountVC, animated: true)

        
    }
    func forgotpassword(){
        let forgotVC = storyboard?.instantiateViewController(withIdentifier: "ForgotVC") as! ForgotPasswordVC
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.pushViewController(forgotVC, animated: true)
    }
    func login(){
        print("login")
        let revealVC = storyboard?.instantiateViewController(withIdentifier: "revealVC")
        navigationController?.pushViewController(revealVC!, animated: true)
    }
}

