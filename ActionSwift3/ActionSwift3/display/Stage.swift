//
//  Stage.swift
//  ActionSwiftSK
//
//  Created by Craig on 6/05/2015.
//  Copyright (c) 2015 Interactive Coconut. All rights reserved.
//

import SpriteKit
import UIKit

public class Stage: DisplayObjectContainer {
    public static var size:CGSize = CGSize(width: 0, height: 0)
    
    private let skView:SKView
    private var delegate:StageSceneProtocol?
    
    public init(_ skView:SKView) {
        self.skView = skView
        Stage.size = CGSize(width: self.skView.bounds.width, height: self.skView.bounds.height)
        
        super.init()

        delegate = self
        
        let stageScene = StageScene(size: Stage.size)
        stageScene.scaleMode = SKSceneScaleMode.ResizeFill
        stageScene.backgroundColor = UIColor.whiteColor()
        
        skView.presentScene(stageScene)
        
        stageScene.addChild(self.node)
        println("Stage parent = \(self.parent)")
    }
    public static func getSize()->CGSize {
        return Stage.size
    }
}
