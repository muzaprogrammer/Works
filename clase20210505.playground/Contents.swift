//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

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
}

var p = Person(name: "Matt", age:40)
//p.name = "Matt"
//p.age = 40

print(p.profile())
