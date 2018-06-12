//
//  Course.swift
//  ParseJsonSwift4
//
//  Created by LeMy on 6/12/18.
//  Copyright © 2018 Le_My. All rights reserved.
//

import UIKit

class Course: NSObject , Decodable{
    var id:Int
    var name:String
    var link:String
    var imageUrl:String
    var number_of_lessons:Int
    
    init(json: [String:Any]) {
        id = json["id"] as? Int ?? -1
        name = json["name"] as? String ?? ""
        link = json["link"] as? String ?? ""
        imageUrl = json["imageUrl"] as? String ?? ""
        number_of_lessons = json["number_of_lessons"] as? Int ?? 0
    }
}
