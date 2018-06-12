//
//  ViewController.swift
//  ParseJsonSwift4
//
//  Created by LeMy on 6/12/18.
//  Copyright © 2018 Le_My. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblCourseInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let jsonString = "https://api.letsbuildthatapp.com/jsondecodable/course"
//        guard let url = URL(string: jsonString) else {return}
//        URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let data = data else {return}
//            do{
//                //for swift 2/3/ojcC
////                guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String:Any] else {return}
////                let course = Course(json: json)
////                print(course.name)
//
//                //for swift 4
//                let course = try JSONDecoder().decode(Course.self, from: data)
//                print(course.name)
//            }catch let jsonError{
//                print("error serialization: ",jsonError)
//            }
//
//            //data raw
////            let dataAsString = String(data: data, encoding: .utf8)
////            print(dataAsString)
//        }.resume()
            //--------------------------------------------------------//
        
        
        let strUrl = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: strUrl) else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, request, error) in
            guard let data = data else {return}
            do{
                let course = try JSONDecoder().decode(Course.self, from: data)
                print(course.link)
            }catch let jsonError{
                print("json error: ", jsonError)
            }
            
        }
        task.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

