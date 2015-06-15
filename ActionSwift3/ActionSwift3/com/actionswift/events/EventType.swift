//
//  EventType.swift
//  LionActions
//
//  Created by wilden on 2015/6/15.
//  Copyright (c) 2015年 Lion Infomation Technology Co.,Ltd. All rights reserved.
//

import Foundation
public enum EventType:String {
    /** Event type for a display object that is added to a parent. */
    case Added = "Added"
    /** Event type for a display object that is entering a new frame. */
    case EnterFrame = "EnterFrame"
    /** Event type for a display object that is removed from its parent. */
    case Removed = "Removed"
    /** Event type that may be used whenever something finishes. */
    case Complete = "Complete"
}