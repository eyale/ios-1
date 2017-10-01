//
//  SwiftRobotControlCenter.swift
//  MyRobot
//
//  Created by Ivan Vasilevich on 10/4/14.
//  Copyright (c) 2014 Ivan Besarab. All rights reserved.
//

import UIKit
//all robor commands can be founded in GameViewController.h
class SwiftRobotControlCenter: RobotControlCenter {
    
    //in this function change levelName
    override func viewDidLoad() {
        levelName = "L2C" // level name
        
        super.viewDidLoad()
    }
    
    
    func notUse() {
//        frontIsClear - впереди нет препятствия
//        leftIsClear - слева нет препятствия
//        rightIsClear - справа нет препятствия
//        candyPresent - есть мешок под роботом
//        candyInBag - мешок есть в роботе
//        facingUp - смотрит вверх
//        facingDown - смотрит вниз
//        facingRight - смотрит вправо
//        facingLeft - смотрит влево
//        frontIsBlocked - впереди препятствие
//        leftIsBlocked - слева препятствие
//        rightIsBlocked - справа препятствие
//        noCandyPresent - нет мешка под роботом
//        noCandyInBag - мешка нет в роботе
//        noFacingUp - не смотрит вверх
//        noFacingDown - не смотрит вниз
//        noFacingRight - не смотрит вправо
//        noFacingLeft - не смотрит влево
        move()
        turnRight()
        pick()
        put()
    }
    
    func turnLeft(){
        for _ in 0..<3 {
            turnRight()
        }
    }
    
    func goFront() {
        while !frontIsBlocked {
            move()
        }
    }
    
    func goFrontWithCheckLeft() {
        while leftIsBlocked {
            move()
        }
    }
    
    func decideToTurn() {
        if frontIsBlocked {
            turnRight()
            goFrontWithCheckLeft()
        }
    }
    
    func makeUTurn() {
        turnLeft()
        move()
        turnLeft()
    }
    
    func letsPlay() {
        goFront()
        decideToTurn()
        makeUTurn()
        goFront()
        turnRight()
    }
    
    func cicle() {
        for _ in 0..<8 {
            letsPlay()
        }
    }
    
    //in this function write your code
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        cicle()
    }
}













