//
//  main.swift
//  clase20210505b
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

class Employee : Person {
    var employeeNumber = 121651616
    var hourlyrate = 12.00
    
    override func profile() -> String {
        return "Yo \(self.name) \(self.lastName) hourly rate \(self.hourlyrate)."
    }
}
var p = Person(name: "Matt", age:40)
var e =  Employee()
//p.name = "Matt"
//p.age = 40
e.employeeNumber = 752
e.hourlyrate = 8


print(p.profile())
print(e.name)

var p1 = Person()
p1.name="Mario"
p1.lastName="Hernandez"
p1.age=29
print(p1.profile())

var e1 =  Employee()
e1.name = "Jim"
e1.lastName = "Smith"
e1.age = 18
e1.employeeNumber = 1
e1.hourlyrate = 15.50
print(e1.profile())

