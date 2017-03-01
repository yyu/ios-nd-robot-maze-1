//
//  MazeMoveOperation.swift
//  Maze
//
//  Created by Jarrod Parkes on 6/15/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation

// MARK: - MazeMoveOperation

class MazeMoveOperation: Operation {

    // MARK: Properties
    
    fileprivate let mazeController: MazeController
    internal var isReallyFinished: Bool
    
    let move: MazeMove
    let object: MazeObject

    // MARK: Initializers
    
    init(object: MazeObject, move: MazeMove, mazeController: MazeController) {
        self.object = object
        self.move = move
        self.mazeController = mazeController
        self.isReallyFinished = false
        super.init()
    }

    // MARK: NSOperation overrides
    
    override var isFinished: Bool {
        get {
            return isReallyFinished
        }
    }
    
    override func start() {
        mazeController.performMazeMoveOperation(self)
    }
    
    // MARK: KVO Convenience
    
    func markAsFinished() {
        willChangeValue(forKey: "isFinished")
        isReallyFinished = true
        didChangeValue(forKey: "isFinished")
    }
}
