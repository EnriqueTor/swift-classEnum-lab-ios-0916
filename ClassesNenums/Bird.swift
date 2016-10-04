//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    case slow = 1
    case medium = 2
    case fast = 3
    
    func isFaster(thanSpeed:Speed) -> Bool {
        switch self {
        case .fast :
            return self.rawValue >= thanSpeed.rawValue
        case .medium :
            return self.rawValue >= thanSpeed.rawValue
        case .slow :
            return self.rawValue >= thanSpeed.rawValue
        }
    }
}

enum Diet {
    case meatEater
    case vegetarian
}


enum Sex {
    case male
    case female
}

class Trex {
    
    var name: String
    var sex: Sex
    var speed: Speed = Speed.fast
    var diet: Diet = Diet.meatEater
    var isAlive: Bool = true
    
    init(name: String, sex: Sex) {
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
        return "ROAAAWWWWRRRRR!!!!!!"
    }
    
    func isFaster(thanTrex trex: Trex) -> Bool {
        if self.speed.rawValue >= trex.speed.rawValue {
            return true
        }
        return false
    }
    
    func eat(otherTrex trex: Trex) {
        if self.speed.rawValue >= trex.speed.rawValue {
            trex.isAlive = false
        }
        
    }
    
    
}


