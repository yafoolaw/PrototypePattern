//
//  Person.swift
//  PrototypePattern
//
//  Created by FrankLiu on 15/12/11.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

class Person: BaseCopyObject {

    var personname : String?
    var age        : String?
    var dataArray  : [AnyObject]?
    var infoDic    : [String : AnyObject]?
    
    override func parametersCopyOperationWithBaseCopyObject(object: BaseCopyObject) {
        
        let personObject = object as! Person
        personObject.personname = self.personname
        personObject.age        = self.age
        personObject.dataArray  = self.dataArray
        personObject.infoDic    = self.infoDic
    }
}
