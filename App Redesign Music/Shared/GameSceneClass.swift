//
//  GameSceneClass.swift
//  App Redesign Music
//
//  Created by Alessandra De Matteo on 10/12/21.
//

import Foundation
import SpriteKit
import SwiftUI

class GameScene: SKScene {
    
    private var currentNode: SKNode?
    let circle = SKTexture(imageNamed: "CircleFill")
    
    //location setting
    let location = CGPoint(x: 200, y: 100)
//    let locationBag = CGPoint(x: 225, y: 70)
//
//    let rectSize = CGSize(width: 110, height: 110)
    
    override func didMove(to view: SKView) {
        
        //physicsBody setting
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        
        createGravityField()
        
        createGenre(genre: "Rock")
        createGenre(genre: "Indie")
        createGenre(genre: "Classic")
        createGenre(genre: "Pop")
        createGenre(genre: "Soul")
        createGenre(genre: "Reggae")
        createGenre(genre: "House")
        createGenre(genre: "Elettronic")
        
        //scene attributes
        self.backgroundColor = .white
        self.physicsWorld.gravity = CGVector(dx: 0, dy: 1)
    }
    
    func createGravityField(){
        let gravField = SKFieldNode.radialGravityField(); // Create grav field
        gravField.strength = 0.01
        gravField.position.x = size.width/2; // Center on X axis
        gravField.position.y = size.height/2; // Center on Y axis (Now at center of screen)
        addChild(gravField); // Add to world
    }
    
    func createGenre(genre: String) {
        
        let circlePressAction = SKAction.scale(to: 1.5, duration: 0.5)
        let button = JKButtonNode(title: genre, background: circle) { button in
            button.run(circlePressAction)
            button.physicsBody = SKPhysicsBody(circleOfRadius: 75)
            button.texture = self.circle
        }
        button.physicsBody = SKPhysicsBody(circleOfRadius: 50)
        button.physicsBody?.allowsRotation = false
        button.position = location
        button.texture = circle
        button.setPropertiesForTitle(fontName: "SF Pro", size: 21, color: .white)
        
        addChild(button)
        
    }
    
//    func createGenre(){
//        //circle implementation
//        let circle = SKShapeNode(circleOfRadius: 50)
//        circle.fillColor = .systemPink
//        circle.position = location
//
//        //text implementation
//        let genreText = SKLabelNode(text: "Rock")
//        genreText.position = circle.position
//        genreText.zPosition = 100
//
//        //physics bodies
//        circle.physicsBody = SKPhysicsBody(circleOfRadius: 50)
//        circle.physicsBody?.allowsRotation = false
//        genreText.physicsBody = SKPhysicsBody(circleOfRadius: 50)
//        genreText.physicsBody?.allowsRotation = false
//        genreText.physicsBody?.isDynamic = false
//
//        //joint implementation
//        let circleGenreTextPin = SKPhysicsJointFixed.joint(withBodyA: genreText.physicsBody!, bodyB: circle.physicsBody!, anchor: location)
//
//        //add child
//        addChild(circle)
//        addChild(genreText)
//
//        //scene attributes
//        self.physicsWorld.add(circleGenreTextPin)
//    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let button = SKSpriteNode()
//        if let touch = touches.first {
//            let location = touch.location(in: self)
//            
//            if button.contains(location) {
//                button.texture = self.circle
//            }
//        }
//    }
}
