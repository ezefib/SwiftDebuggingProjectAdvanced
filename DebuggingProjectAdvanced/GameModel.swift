//
//  GameModel.swift
//  DebuggingProjectAdvanced
//
//  Created by Thinkful on 12/12/2014.
//  Copyright (c) 2014 Thinkful. All rights reserved.
//

import Foundation

class GameModel {
    var computerRandomNumber:Int
    init() {
        computerRandomNumber = GameModel.getRandomNumber()
    }
    func resetComputerRandomNumber() {
        computerRandomNumber = GameModel.getRandomNumber()
    }
    //returns correct, is higher
    func makeGuess(_ userGuess:Int)->(Bool,Bool) {
        if (computerRandomNumber == userGuess) {
            return(true,false)
        } else {
            //if userGuess is higher than computerRandomNumber, then isHigher = true
            let isHigher = userGuess > computerRandomNumber
            return(false,isHigher)
        }
    }
    //MARK: class function
    class func getRandomNumber() -> Int {
        let randomNumber = Int(arc4random_uniform(10)) + 1
        return randomNumber
    }
}
