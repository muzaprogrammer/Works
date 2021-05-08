//
//  Person.swift
//  clase20210505c
//
//  Created by Development on 5/7/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var age: Int
    
    func profile() -> String {
        return "Yo \(self.name) de edad \(self.age)."
    }
    
    init() {
        self.name = "Name"
        self.age = 0
    }
    
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
    
    //deinit {}
    
    private var _lastName:String=""
    var lastName:String{
        get{
            return _lastName
        }
        set{
            _lastName = newValue
        }
    }
}
