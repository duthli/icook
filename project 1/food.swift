//
//  food.swift
//  project 1
//
//  Created by do duy hung on 10/7/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
class Food : NSObject{
    var nameFood : String!
    var location : String!
    var price : String!
    var popular : String!
    var level : String!
    var loveCount : Int!
    var tagFood : [String]!
    var comment : [String]!
    var descriptions : String!
    var time : String!
    init(nameFood : String , location : String , price : String, popular : String,level : String,loveCount:Int,descriptions: String){
        self.nameFood = nameFood
        self.location = location
        self.price = price
        self.popular = popular
        self.level = level
        self.loveCount = loveCount
        self.descriptions = descriptions
    }
}
