//
//  World.swift
//  Micronaut
//
//  Created by Christopher Williams on 1/16/16.
//  Copyright © 2016 Christopher Williams. All rights reserved.
//
//  Contains all sprites within the world.

import Foundation
import SpriteKit

class World {
    static var ShouldReset:Bool = false
    
    static private var sprites:[String:SKNode] = [String:SKNode]()
    
    // Adding "//" searches for nodes recursively https://developer.apple.com/library/ios/documentation/SpriteKit/Reference/SKNode_Ref/index.html#//apple_ref/occ/cl/SKNode
    class func loadSprites(scene: SKScene) {
        sprites[Constants.Sprite_Player] = scene.childNodeWithName("//\(Constants.Sprite_Player)")!
        sprites[Constants.Sprite_Background] = scene.childNodeWithName("//\(Constants.Sprite_Background)")!
        sprites[Constants.Sprite_Camera] = scene.childNodeWithName("//\(Constants.Sprite_Camera)")!
    }
    
    class func getSpriteByName(name: String) -> SKNode {
        return sprites[name]!
    }

    // Player either died or acheived the goal. Reset the sprites.
    class func reset() {
        World.getSpriteByName(Constants.Sprite_Background).position.x = 0.0

        Player.reset()
        Camera.reset()
        
        World.ShouldReset = false
    }
    
    // Gets called with every frame.
    class func update() {
        // Check if we need to reset the world
        if World.ShouldReset {
            World.reset()
        }
    }
}