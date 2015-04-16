//: Playground - noun: a place where people can play

import UIKit

struct Address {
    
    var address: String
    var state: String
    var country: String
    
    static var defaultState: String = "DKI Jakarta"

    func isValid() -> Bool {
        if state == "Sulawesi Selatan" {
            return true
        } else {
            return false
        }
    }
    
    mutating func changeStateToDefault() {
        state = Address.defaultState
    }
}

var address = Address(address: "Daeng Tompo 15/17", state: "Sulawesi Selatan", country: "Sulawesi Selatan")
var address2 = address
address2.address = "Lincoln Drive, Brooklyn Dormitory"
address2.state = "Tangerang"

address.isValid()
address2.isValid()

address.changeStateToDefault()





