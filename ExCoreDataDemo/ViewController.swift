//
//  ViewController.swift
//  ExCoreDataDemo
//
//  Created by emily on 2018/8/8.
//  Copyright © 2018年 emily. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let myEntityName = "Student"
        let myContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        let coreDataConnect = CoreDataConnect(context: myContext)
        
        // auto increment
        let myUserDefaults = UserDefaults.standard
        var seq = 1
        if let idSeq = myUserDefaults.object(forKey: "idSeq") as? Int {
            seq = idSeq + 1
        }
        
//        // insert
//        let insertResult = coreDataConnect.insert(
//            myEntityName, attributeInfo: [
//                "id" : "\(seq)",
//                "name" : "小曦\(seq)",
//                "height" : "\(168.0 + Double(seq))"
//            ])
//        if insertResult {
//            print("新增資料成功")
//
//            myUserDefaults.set(seq, forKey: "idSeq")
//            myUserDefaults.synchronize()
//        }
////
        
//        // select
//        let selectResult = coreDataConnect.retrieve(myEntityName, predicate: nil, sort: [["id":true]], limit: nil)
//        if let results = selectResult {
//            for result in results {
//                print("\(result.value(forKey: "id")!). \(result.value(forKey: "name")!) 身高： \(result.value(forKey: "height")!)")
//            }
//        }
        
        // update
        let updateId = seq - 1
        var predicate = "id = \(updateId)"
//        let updateResult = coreDataConnect.update(myEntityName, predicate: predicate, attributeInfo: ["height":"\(180)"])
//        if updateResult {
//            print("更新資料成功")
//        }
        
        
        // delete
//        let deleteID = seq - 1
//        predicate = "id = \(deleteID)"
//        let deleteResult = coreDataConnect.delete(myEntityName, predicate: predicate)
//        if deleteResult {
//            print("刪除資料成功")
//        }
        
        // select
        let selectResult = coreDataConnect.retrieve(myEntityName, predicate: predicate, sort: [["id":true]], limit: nil)
        if let results = selectResult {
            for result in results {
                print("\(result.value(forKey: "id")!). \(result.value(forKey: "name")!) 身高： \(result.value(forKey: "height")!)")
            }
        }

        
    }
}

