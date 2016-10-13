//
//  foodViewBase.swift
//  project 1
//
//  Created by do duy hung on 10/12/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class foodView: UIViewController {

    
    @IBOutlet weak var img_background: UIImageView!
    
    @IBOutlet weak var img_food: UIImageView!
    
    @IBOutlet weak var view_chief: UIView!
    
    @IBOutlet weak var view_food: UIView!
    
    @IBOutlet weak var view_detail: UIView!
    
    @IBOutlet weak var lbl_likecount: UILabel!
    
    @IBOutlet weak var btn_like: UIButton!
    
    @IBOutlet weak var btn_share: UIButton!
    
    @IBOutlet weak var btn_pin: UIButton!
    
    @IBOutlet weak var lbl_date: UILabel!
    
    @IBOutlet weak var btn_avatar: UIButton!
    
    @IBOutlet weak var btn_chiefName: UIButton!
    
    
    
    // food view 2
    
    @IBOutlet weak var lbl_time: UILabel!
    
    @IBOutlet weak var lbl_person: UILabel!
    
    @IBOutlet weak var btn_ingredients: UIButton!
    
    @IBOutlet weak var btn_instructions: UIButton!
    
    @IBOutlet weak var tv_detail: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupchiefView()
        setupFoodView()
        setupDetail()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupchiefView(){
        view_chief.setupViewForFood(view: view_chief)
        view_food.setupViewForFood(view: view_food)
        view_detail.setupViewForFood(view: view_detail)
        view_chief.layer.cornerRadius = 10
        view_food.layer.cornerRadius = 10
        view_detail.layer.cornerRadius = 10
        img_background.image = UIImage(named: "backgroundblur")
        img_food.image = UIImage(named:"itemcell.png")
        
        
    }
    
    func setupFoodView(){
        btn_ingredients.highlightButton(btn: btn_ingredients)
        btn_instructions.normalButton(btn: btn_instructions)
        lbl_time.text = "96 hour"
        lbl_person.text = "69 person"
    }
    @IBAction func action_ingredients(_ sender: UIButton) {
        btn_ingredients.highlightButton(btn: btn_ingredients)
        btn_instructions.normalButton(btn: btn_instructions)
    }
    func setupDetail(){
        tv_detail.isEditable = false
        tv_detail.backgroundColor = UIColor.clear
    
    }
    
    @IBAction func action_instructions(_ sender: UIButton) {

        btn_instructions.highlightButton(btn: btn_instructions)
        btn_ingredients.normalButton(btn: btn_ingredients)
    }
    
    }
extension UIView
{
    func setupViewForFood(view: UIView){
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor.copy(alpha: 0.6)
        view.backgroundColor = UIColor.init(red: 149/255, green: 165/255, blue: 166/255, alpha: 0.5)
    
    }

}
extension UIButton
{
    func normalButton(btn: UIButton){
        
        btn.layer.backgroundColor = UIColor.init(red: 149/255, green: 165/255, blue: 166/255, alpha: 0.5).cgColor
        btn.layer.cornerRadius = 10
        btn.layer.borderWidth = 0
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.setTitleColor(UIColor.white, for: .highlighted)
    }

    func highlightButton(btn: UIButton){
        btn.layer.borderWidth = 0
        btn.layer.cornerRadius = 10
        btn.layer.backgroundColor = UIColor.init(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0).cgColor
        btn.titleLabel?.textColor = UIColor.init(red: 149/255, green: 165/255, blue: 166/255, alpha: 1.0)
        btn.setTitleColor(UIColor.white, for: .highlighted)
        
    }

}
