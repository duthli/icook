//
//  person.swift
//  project 1
//
//  Created by do duy hung on 10/7/16.
//  Copyright © 2016 do duy hung. All rights reserved.
//

import Foundation
class chief: NSObject{
//MARK: declare
    var firstName : String!
    var lastName : String!
    var email : String!
    var password : String!
    var age : Int!
    var sex : Bool!
    var city : String!
    var phoneNumber : String!
    var ID : Int!
    var urlAvatar : String!
// can xem lai address
    var address: String!
    var status : String!
    var language : String!
    var tagChief: [String]!
    var followersCount : Int!
    var followingCount : Int!
    var pinCount : Int!
    var albumCount : Int!

//MARK: food and follow
    var foodList : [Food]!
    var friendlist : [chief]!
    var followers : [chief]!
    var following : [chief]!
    var foodAlbums : [Album]!
    
//MARK: Init
    override init(){
        self.urlAvatar = ""
        self.address = ""
        self.phoneNumber = ""
        self.tagChief = ["#\(lastName)"]
        self.status = ""
        }
    init(firstName: String,lastName:String,email: String,password: String,age:Int,phoneNumber:String,ID:Int,urlAvatar:String,address:String,status : String , language : String,tagChief : [String] , followersCount : Int,followingCount : Int, pinCount : Int,albumCount : Int){
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.password = password
        self.age = age
        self.phoneNumber = phoneNumber
        self.ID = ID
        self.urlAvatar = urlAvatar
        self.address = address
        self.status = status
        self.language = language
        self.tagChief = tagChief
        self.followersCount = followersCount
        self.followingCount = followingCount
        self.pinCount = pinCount
        self.albumCount = albumCount
        
    }
    
    
}
