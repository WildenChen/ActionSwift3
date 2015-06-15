//
//  DisplayObject.swift
//  LionActions
//
//  Created by wilden on 2015/6/15.
//  Copyright (c) 2015年 Lion Infomation Technology Co.,Ltd. All rights reserved.
//

import Foundation
import SpriteKit
import LionEvents
public class DisplayObject: EventDispatcher, Equatable, StageSceneProtocol {
    public var parent:DisplayObjectContainer?
    public var name:String = ""
    internal var node = SKNode()
    
    override init() {
        super.init()
        
    }
    public var alpha:CGFloat {
        get {return node.alpha}
        set(newValue) {node.alpha = newValue}
    }
    public var height:CGFloat {
        return node.frame.height
    }
    public var width:CGFloat {
        return node.frame.width
    }
    public var rotation:CGFloat {
        get {return -node.zRotation * 180 / CGFloat(M_PI)}
        set(newValue) {node.zRotation = -newValue * CGFloat(M_PI) / 180}
    }
    public var scaleX:CGFloat {
        get {return node.xScale}
        set(newValue) {node.xScale = newValue}
    }
    public var scaleY:CGFloat {
        get {return node.yScale}
        set(newValue) {node.yScale = newValue}
    }
    public var x:CGFloat {
        get {return node.position.x}
        set (newValue) {node.position.x = newValue}
    }
    public var y:CGFloat {
        get {return node.position.y}
        set (newValue) {
            node.position.y = -newValue
        }
    }
    internal var yRaw:CGFloat {
        get {return node.position.y}
        set (newValue) {
            node.position.y = newValue
        }
    }
    internal func update(currentTime:CFTimeInterval) {
        dispatchEvent(Event(aType: EventType.EnterFrame.rawValue, aBubbles: false))
        //dispatchEvent(Event(EventType.EnterFrame.rawValue,false))
    }
}