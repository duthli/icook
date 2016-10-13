//
//  mainVC.swift
//  project 1
//
//  Created by do duy hung on 10/10/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class mainVC: tableBaseVC,UICollectionViewDelegate,UICollectionViewDataSource,UITableViewDataSource,UITableViewDelegate{ //
    //trends
    var mycollectionView: UICollectionView!
    var cell : trendCell!
    //table
    var mytable : UITableView!
    var cellTable : TableViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        createTrends()
        createTable()

    }
//MARK: create View
    func createTrends(){
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 60, height: 60)
        mycollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.view.addSubview(mycollectionView)
        
        mycollectionView.register(trendCell.self, forCellWithReuseIdentifier: "CellTrends")

        mycollectionView.backgroundColor = UIColor(red: (64/255.0), green: (54/255.0), blue: (105/255.0), alpha: 0)
        constraintForTrends()
        mycollectionView.delegate = self
        mycollectionView.dataSource = self
    }
    
    func createTable(){
        mytable = UITableView(frame: self.view.frame)
        self.view.addSubview(mytable)
        mytable.register(TableViewCell.self, forCellReuseIdentifier: "CellTable")
        constraintForTable()
        mytable.delegate = self
        mytable.dataSource = self
        mytable.layer.cornerRadius = 8
        mytable.backgroundColor = UIColor.clear//UIColor.init(red: 255/255, green: 255/255, blue: 255/255, alpha: 0)

        
    
    }
    
//MARK: delegate View
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 99
    }
    func collectionView(_ collectionView: UICollectionView,cellForItemAt indexPath : IndexPath)->UICollectionViewCell{
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellTrends", for: indexPath as IndexPath) as! trendCell
        cell.addView()
        cell.label.text = "hung"
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
    //tableView
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        cellTable = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        cellTable.lbl_Title.text = "HUNG"
        cellTable.lbl_trend.text = "trends"
        cellTable.img_background.image = UIImage(named: "itemcell.png")
        // can xem lai
        cellTable.layer.borderWidth = 0
        cellTable.layer.cornerRadius = 99
        
        return cellTable
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return self.view.bounds.size.height * 0.3
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 21
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = UIColor.clear
        return headerView
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Foodbase = storyboard?.instantiateViewController(withIdentifier: "Foodbase") as! foodView
        navigationController?.pushViewController(Foodbase, animated: true)
    }
//MARK: Constraints
    func constraintForTrends(){
        mycollectionView.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: mycollectionView, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: mycollectionView, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: mycollectionView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: self.view.bounds.size.height * 0.1)
        let height = NSLayoutConstraint(item: mycollectionView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.2, constant: 0)
        NSLayoutConstraint.activate([leading,trailing,top,height])
    }
    
    func constraintForTable(){
        mytable.translatesAutoresizingMaskIntoConstraints = false
        let leading = NSLayoutConstraint(item: mytable, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 21)
        let trailing = NSLayoutConstraint(item: mytable, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -21)
        let top = NSLayoutConstraint(item: mytable, attribute: .top, relatedBy: .equal, toItem: self.mycollectionView, attribute: .bottom, multiplier: 1.1, constant: 0)
        let height = NSLayoutConstraint(item: mytable, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.58, constant: 0)
        let bottom = NSLayoutConstraint(item: mytable, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: -21)

        NSLayoutConstraint.activate([leading,trailing,top,bottom])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



