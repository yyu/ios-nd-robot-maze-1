//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

class ControlCenter {
        
    func moveComplexRobot(_ robot: ComplexRobot) {
        
        robot.move()
        
        
        robot.rotateLeft()
        robot.rotateLeft()
        robot.move()
        robot.rotateRight()
        robot.move()
        robot.rotateRight()
        robot.move(2)
        robot.rotateLeft()
        robot.move()
        robot.rotateLeft()
        robot.move(3)
        robot.rotateRight()
        robot.move()
        robot.rotateRight()
        robot.move(3)

    }
}
