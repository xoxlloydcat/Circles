//
//  CirclesGame.swift
//  Circle Wizard
//
//  Created by iD Student on 7/25/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class CircleScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode: SKShapeNode?
    
    let hero = SKSpriteNode(imageNamed: "Image")
    
    override func didMove(to view: SKView){
        
    
        let xCoord = size.width * 0.5
        let yCoord = size.height * 0.5
    
        hero.size.height = 50
        hero.size.width = 50
    
        hero.position = CGPoint(x: xCoord, y: yCoord)
    
    
        addChild(hero)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    

    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let bullet = SKSpriteNode(imageNamed: "image" )
        bullet.size = CGSize(width: 75, height: 75)
        bullet.position = CGPoint(x: hero.position.x, y: hero.position.y)
        
        
        addChild(bullet)
        
        guard let touch = touches.first else { return }
        
        let touchLocation = touch.location(in: self)
        
        let vector = CGVector(dx: -(hero.position.x - touchLocation.x), dy: -(hero.position.y - touchLocation.y))
        
        let projectileAction = SKAction.sequence([
            SKAction.repeat(
                SKAction.move(by: vector, duration: 0.5), count: 10),
            SKAction.wait(forDuration: 0.5),
            SKAction.removeFromParent()
            ])
        bullet.run(projectileAction)
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }

}
