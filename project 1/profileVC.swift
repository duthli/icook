//
//  profileVC.swift
//  project 1
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class profileVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet weak var img_background: UIImageView!
    
    
    @IBOutlet weak var img_Smallavatar: UIImageView!
    
    @IBOutlet weak var lbl_Pincount: UILabel!
    
    @IBOutlet weak var lbl_Followerscount: UILabel!
    
    @IBOutlet weak var lbl_Followingcount: UILabel!
    
    @IBOutlet weak var table_Albums: UITableView!
    
    
    var cellAlbum : AlbumsCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        img_Smallavatar.image = UIImage(named: "avatar.png")
        img_background.image = UIImage(named: "backgroundblur")
        table_Albums.delegate = self
        table_Albums.dataSource = self
        table_Albums.layer.cornerRadius = 8
        table_Albums.backgroundColor = UIColor.clear
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //cellAlbum = tableView.dequeueReusableCell(withIdentifier: "albumcell", for: indexPath) as! AlbumsCell
        cellAlbum = Bundle.main.loadNibNamed("AlbumsCell", owner: self, options: nil)?.first as! AlbumsCell!
        cellAlbum.lbl_chieftName.text = "hung"
        cellAlbum.lbl_date.text = "96 days ago"
        cellAlbum.lbl_title.text = "nuoc loc"
        cellAlbum.img_background.image = UIImage(named: "itemcell.png")
        return cellAlbum
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
//MARK: custom navi
    func customnavi()
    {
        let btn_menu = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(openMenu))
        self.navigationItem.rightBarButtonItem  = btn_menu
    }
    func openMenu(){
        print("menu Opened")
    }
}
