//
//  TableViewCell.swift
//  project 1
//
//  Created by do duy hung on 10/12/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl_trend: UILabel!
    @IBOutlet weak var uiview_trend: UIView!
    
    @IBOutlet weak var img_background: UIImageView!
    @IBOutlet weak var lbl_Title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        lbl_trend.setuptrends(lbl: lbl_trend)
        lbl_Title.setupTitle(lbl: lbl_Title)
        uiview_trend.setupView(view: uiview_trend)
        img_background.setupimg(img: img_background)
        // Configure the view for the selected state
    }
    
}
extension UILabel
{
    func setuptrends(lbl: UILabel){
        lbl.textColor = UIColor.white
        lbl.textAlignment = .center
        lbl.adjustsFontSizeToFitWidth = true
    }
    func setupTitle(lbl: UILabel){
        lbl.textColor = UIColor.red
        lbl.textAlignment = .left
        lbl.adjustsFontSizeToFitWidth = true
    }
    func setupNormal(lbl: UILabel){
        lbl.textColor = UIColor.white
        lbl.adjustsFontSizeToFitWidth = true
    
    }
}
extension UIView{
    func setupView(view: UIView){
        view.backgroundColor = UIColor.red
        view.layer.cornerRadius = 12
    
    }
}
extension UIImageView{
    func setupimg(img : UIImageView){
        img.layer.cornerRadius = 15
    }
    
}
