//
//  Object.swift
//  LionActions
//
//  Created by wilden on 2015/6/12.
//  Copyright (c) 2015年 Lion Infomation Technology Co.,Ltd. All rights reserved.
//

import Foundation
import UIKit
public class Object:Printable{
    
    public var description:String {
        return "\(_stdlib_getDemangledTypeName(self))"
    }
    
    public func toString() -> String {
        return self.description
    }
}