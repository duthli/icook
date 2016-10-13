//
//  tabbarVC.swift
//  project 1
//
//  Created by do duy hung on 10/11/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class tabbarVC: UITabBarController {

    @IBOutlet weak var tabbar: UITabBar!
    @IBOutlet weak var search: UIBarButtonItem!
    @IBOutlet weak var slideMenu: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabbar.backgroundColor = UIColor.clear

    }
    override func viewWillAppear(_ animated: Bool) {
        
        slideMenu.target = self.revealViewController()
        slideMenu.action = Selector("revealToggle:")
        slideMenu.tintColor = UIColor.white
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        search.tintColor = UIColor.white
        search.target = self
        search.action = #selector(searchItem)
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 231/255, green: 76/255, blue: 60/255, alpha: 1.0)
    }
    func searchItem(){
        print("searching")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
