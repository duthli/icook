//
//  AlbumDetailVC.swift
//  project 1
//
//  Created by do duy hung on 10/13/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import UIKit

class AlbumDetailVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    @IBOutlet weak var collection_Food: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collection_Food.delegate = self
        collection_Food.dataSource = self
        collection_Food.register(ItemFoodCell.self, forCellWithReuseIdentifier: "ItemFoodCell")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemFoodCell", for: indexPath) as! ItemFoodCell
        cell.lbl_namefood?.text = "hung"
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

}
