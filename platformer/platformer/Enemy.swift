//
//  Enemy.swift
//  Micronaut
//
//  Created by Christopher Williams on 3/6/16.
//  Copyright © 2016 Christopher Williams. All rights reserved.
//
//  THIS IS NOT BEING USED BUT XCODE DOESN'T LIKE ME WHEN I DELETE THIS SO IT STAYS

import Foundation
import SpriteKit

func ==(lhs:Enemy, rhs:Enemy) -> Bool {
    return lhs.sprite == rhs.sprite;
}

class Enemy: Hashable {
    internal var sprite: SKNode?
    
    init(sprite:SKNode) {
        self.sprite = sprite
    }
    
    var hashValue: Int {
        // TODO find a unique value per enemy
        return 1
    }
    
    func update() {
        // Override this with super classes
    }
    func reset() {
        // Override this with super classes
    }
    func hurtBy(body: SKPhysicsBody) {
        // Override this with super classes
    }
}
