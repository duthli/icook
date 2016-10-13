//
//  slideBarVC.swift
//  project 1
//
//  Created by do duy hung on 10/11/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class slideBarVC: UIViewController,UITableViewDelegate,UITableViewDataSource{

//    var myTableMenu: UITableView!
//    var img_avatar : UIImageView!
//    var lbl_Name : UILabel!
//    var lbl_weather : UILabel!
    
    
    
    @IBOutlet weak var btn_avatar: UIButton!
    
    @IBOutlet weak var lbl_name: UILabel!
    
    @IBOutlet weak var table_slide: UITableView!
    
    @IBOutlet weak var view_avatar: UIView!
    
    
    var arr = ["chuc nang 1","chuc nang 2","chuc nang 3","chuc nang 4","chuc nang 5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        addMenu()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func addMenu(){
        table_slide.delegate = self
        table_slide.dataSource = self
        table_slide.isScrollEnabled = false
        view_avatar.backgroundColor = UIColor.clear
        create_img_Avatar()
       
    
    }
    
    func create_img_Avatar(){
        btn_avatar.setImage(UIImage(named: "itemcell.png"), for: .normal)
        btn_avatar.contentMode = .scaleAspectFit
        //img_avatar = UIImageView(frame: CGRect(x: 50, y: 30, width: 120, height: 120))
        btn_avatar.layer.cornerRadius = 50
        btn_avatar.clipsToBounds = true
        btn_avatar.addTarget(self, action: #selector(pushprofile), for: .touchUpInside)
        
    }
    
    func pushprofile(){
        let profileVC = storyboard?.instantiateViewController(withIdentifier: "profileVC") as! profileVC
        navigationController?.pushViewController(profileVC, animated: true)
    }
//MARK: delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let menuCell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) 
        menuCell.textLabel?.text = "\(arr[indexPath.section])"
        return menuCell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("view thu \(indexPath.section)")
        print(indexPath)
    }
}
