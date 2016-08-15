//
//  GameScene.swift
//  Simple-Scrolling
//
//  Created by mitchell hudson on 8/15/16.
//  Copyright (c) 2016 mitchell hudson. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var clouds: SKSpriteNode!
    var clouds2: SKSpriteNode!
    
    var crystals: SKSpriteNode!
    var crystals2: SKSpriteNode!
    
    var groundLeft: SKSpriteNode!
    var groundRight: SKSpriteNode!
    
    
    func scrollSprite(sprite: SKSpriteNode, speed: CGFloat) {
        sprite.position.x -= speed
        
        if sprite.position.x < sprite.size.width / -2 {
            sprite.position.x += sprite.size.width * 2
        }
    }
    
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        clouds = self.childNodeWithName("clouds") as! SKSpriteNode
        clouds2 = self.childNodeWithName("clouds2") as! SKSpriteNode
        
        crystals = self.childNodeWithName("crystals") as! SKSpriteNode
        crystals2 = self.childNodeWithName("crystals2") as! SKSpriteNode
        
        groundLeft = self.childNodeWithName("groundRight") as! SKSpriteNode
        groundRight = self.childNodeWithName("groundLeft") as! SKSpriteNode
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        /* Called when a touch begins */
        
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
        scrollSprite(clouds, speed: 2)
        scrollSprite(clouds2, speed: 2)
        
        scrollSprite(crystals, speed: 1)
        scrollSprite(crystals2, speed: 1)
        
        scrollSprite(groundLeft, speed: 3)
        scrollSprite(groundRight, speed: 3)
    }
}
