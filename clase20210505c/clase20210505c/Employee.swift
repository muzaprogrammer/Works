//
//  Employee.swift
//  clase20210505c
//
//  Created by Development on 5/7/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class Employee : Person {
    var employeeNumber = 121651616
    var hourlyrate = 12.00
    
    override func profile() -> String {
        return "Yo \(self.name) \(self.lastName) hourly rate \(self.hourlyrate)."
    }
}
