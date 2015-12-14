//
//  BaseCopyObject.swift
//  PrototypePattern
//
//  Created by FrankLiu on 15/12/10.
//  Copyright © 2015年 FrankLiu. All rights reserved.
//

import UIKit

class BaseCopyObject: NSObject, NSCopying {
    
    required override init() {
        
    }
    
    /**
     实现NSCopying协议
     
     - parameter zone: zone description
     
     - returns: 新复制的对象
     */
    final func copyWithZone(zone : NSZone) -> AnyObject {
        
        // dynamicType用以获取动态类型
        let copy  = self.dynamicType.init()
        
        self.parametersCopyOperationWithBaseCopyObject(copy)
        
        return copy
    }
    
    /**
     参数复制操作,由子类重写
     
     - parameter object: 克隆体
     */
    func parametersCopyOperationWithBaseCopyObject(object : BaseCopyObject) {
    
    
    }
}
