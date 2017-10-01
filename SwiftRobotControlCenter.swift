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
        levelName = "L22H" // level name
        
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
    
    func putCandies() {
        for _ in 0..<3 {
            if noCandyPresent  {
                put()
                for _ in 0..<4 {
                    move()
                }
            } else {
                for _ in 0..<4 {
                    move()
                }
            }
        }
    }
    
    func tryPutCandy() {
        if noCandyPresent {
            put()
        }
    }
    
    func goInLine(){
        while frontIsClear{
            tryPutCandy()
        }
    }
    
    func turnLeft(){
        for _ in 0..<3 {
            turnRight()
        }
    }
    
    func putCandyOnTop(){
        for _ in 0..<4 {
            put()
        }
    }
    
    func moveTop(){
        while frontIsClear {
            move()
        }
    }
    
    //in this function write your code
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        turnLeft()
        moveTop()
        turnRight()
        putCandies()
        put()
        turnRight()
        move()
        turnRight()
        putCandies()
        put()
        turnLeft()
        move()
        turnLeft()
        putCandies()
        turnRight()
        put()
        move()
        turnRight()
        putCandies()
        put()
        turnLeft()
        move()
        turnLeft()
        putCandies()
        put()
        turnRight()
        put()
        move()
        turnRight()
        putCandies()
        turnLeft()
        put()
        move()
        turnLeft()
        putCandies()
        put()
        turnRight()
        move()
        turnRight()
        putCandies()
        turnLeft()
        move()
        put()
        turnLeft()
        putCandies()
    }
}













