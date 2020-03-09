//
//  SnakeEdgeBody.swift
//  Snake
//
//  Created by paul kudryavtsev on 09.03.2020.
//  Copyright © 2020 Владислав Фролов. All rights reserved.
//
import SpriteKit

class EdgeBody: SKShapeNode {
    
    convenience init(position: CGPoint) {
        self.init()

        
        self.position = position
        
        self.physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        self.physicsBody?.categoryBitMask = CollisionCategories.EdgeBody
    }
}
