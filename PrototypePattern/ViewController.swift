//
//  ViewController.swift
//  PrototypePattern
//
//  Created by FrankLiu on 15/12/10.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let personOne = Person()
        personOne.personname = "FrankLiu"
        personOne.age        = "26"
        personOne.dataArray  = ["1","2"]
        personOne.infoDic    = ["key1" : "value1","key2" : "value2"]
        
        print("person = \(personOne), name = \(personOne.personname),age = \(personOne.age),dataArray = \(personOne.dataArray),infoDic = \(personOne.infoDic)")
        
        let personTwo = personOne.copy()
        
        personOne.personname = "HaHa"
        personOne.age        = "28"
        personOne.dataArray  = ["3","4"]
        personOne.infoDic    = ["key3" : "value3","key4" : "value4"]
        
        print(personTwo,personTwo.personname,personTwo.age,personTwo.dataArray,personTwo.infoDic)
        print("person = \(personOne), name = \(personOne.personname),age = \(personOne.age),dataArray = \(personOne.dataArray),infoDic = \(personOne.infoDic)")
    }
}

