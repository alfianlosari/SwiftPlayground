//: Playground - noun: a place where people can play

import UIKit

struct CocoaSkill {
    var name:String
}


class Swifter {
    
    var intelligence: Double = 200 {
        
        willSet(newValue) {
            if newValue < intelligence {
                println("Getting dumber")
            } else {
                println("Getting smarter")
            }
        }
        
        didSet(oldValue) {
           println("Set new intelligence")
        }
        
    }
    var architecture: Double = 180
    var design: Double = 220
    var data: Double = 190
    
    lazy var cocoas: [CocoaSkill] = {
        return [CocoaSkill]()
        }()
    
    var problemSolving: Double  {
        get {
            return (intelligence / 2) + ((architecture + design + data) / 3)
        }
        
        set(newValue) {
            intelligence = newValue * 1.5
            architecture = newValue * 0.9
            design = newValue * 0.9
            data = newValue * 1.2
        }
    }
}

let alfian = Swifter()
alfian.problemSolving
alfian.problemSolving = 300
alfian.cocoas
alfian.intelligence = 100.0
alfian.intelligence = 300












