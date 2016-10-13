//
//  AlbumsCell.swift
//  project 1
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class AlbumsCell: UITableViewCell {

    @IBOutlet weak var lbl_title: UILabel!
    
    @IBOutlet weak var img_background: UIImageView!
    
    
    @IBOutlet weak var img_chiefAvatar: UIImageView!
    
    @IBOutlet weak var lbl_chieftName: UILabel!
    
    @IBOutlet weak var lbl_date: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        lbl_title.setupNormal(lbl: lbl_title)
        lbl_chieftName.setupNormal(lbl: lbl_chieftName)
        lbl_date.setupNormal(lbl: lbl_date)
        img_background.setupimg(img: img_background)
        
        
        
        // Configure the view for the selected state
    }
    
}
