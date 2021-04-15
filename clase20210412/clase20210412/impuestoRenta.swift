
//
//  impuestoRenta.swift
//  clase20210412
//
//  Created by Development on 4/15/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class impuestoRenta {
    var salario : Double = 0.00
    var renta : Double = 0.00
    
    func rentamensual(){
        switch salario {
        case 0.01...472.00 :
            renta = 0.00
        case 472.01...895.24 :
            renta = ((salario - 472.00) * 0.10) + 17.67
        case 895.25...2038.10 :
            renta = ((salario - 895.24) * 0.20) + 60.00
        default:
            renta = ((salario - 2038.10) * 0.30) + 288.57
        }    }
    
    func rentaquincenal(){
        switch salario {
        case 0.01...236.00 :
            renta = 0.00
        case 236.01...447.62 :
            renta = ((salario - 236.00) * 0.10) + 8.83
        case 447.63...1019.05 :
            renta = ((salario - 447.62) * 0.20) + 30.00
        default:
            renta = ((salario - 1019.05) * 0.30) + 144.28
        }
    }
    
    func rentasemanal(){
        switch salario {
        case 0.01...118.00 :
            renta = 0.00
        case 118.01...223.81 :
            renta = ((salario - 118.00) * 0.10) + 4.42
        case 223.82...509.52 :
            renta = ((salario - 223.81) * 0.20) + 15.00
        default:
            renta = ((salario - 509.52) * 0.30) + 72.14
        }
    }
}
