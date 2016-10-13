//
//  loginviewBase.swift
//  project 1
//
//  Created by do duy hung on 10/8/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class loginviewBase: UIViewController {

    var backgroundImg = UIImageView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupbackgroundImg()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupbackgroundImg(){
        backgroundImg = UIImageView(image: UIImage(named: "backgroundblur"))
        self.view.addSubview(backgroundImg)
        // constraints
        backgroundImg_Contraints()
    }
    func backgroundImg_Contraints(){
        backgroundImg.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: backgroundImg, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 0)
        let trailing = NSLayoutConstraint(item: backgroundImg, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: 0)
        let top = NSLayoutConstraint(item: backgroundImg, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        let bottom = NSLayoutConstraint(item: backgroundImg, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,bottom])
        
    }

}
extension UIButton
{
    func setUpLayout(btn: UIButton){
        btn.layer.borderWidth = 0
        btn.layer.cornerRadius = 10
        btn.layer.backgroundColor = UIColor.white.cgColor.copy(alpha: 0)
        //btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    func setUpBigButton(btn: UIButton){
        btn.layer.borderWidth = 0
        btn.layer.cornerRadius = 10
        btn.layer.backgroundColor = UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0).cgColor
        //btn.titleLabel?.font = UIFont.systemFont(ofSize: 24)
        btn.titleLabel?.adjustsFontSizeToFitWidth = true

        
    }
}
extension UITextField{
    func setuptf(tf:UITextField){
        tf.layer.backgroundColor = UIColor.gray.cgColor.copy(alpha: 0.6)
        tf.layer.cornerRadius = 20
        tf.textColor = UIColor.white
    }
}
extension UILabel{
    func setuplabel(lbl: UILabel){
        lbl.textColor = UIColor.white
        //lbl.font = UIFont.systemFont(ofSize: 14)
        lbl.textAlignment = .left
        lbl.adjustsFontSizeToFitWidth = true

    }
    
}

