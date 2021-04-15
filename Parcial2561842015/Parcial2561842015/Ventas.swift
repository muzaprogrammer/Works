//
//  Ventas.swift
//  Parcial2561842015
//
//  Created by Development on 3/17/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class Ventas : Vendedor {
    var unidades : Int = 0
    var comision : Double = 0.00
    var bonificacion : Double = 0.00
    var salarioNeto : Double = 0.00
    var cientos : Int = 0
    
    func capturarUnidades() -> Void {
        print("Ingrese las unidades del vendedor: ")
        unidades = Int(util.leer())!
    }
    
    func CalcComisionBonificacion() -> Void {
        switch unidades {
        case 0...200:
            comision = Double(unidades) * 0.75
            bonificacion = 0
        case 201...750:
            comision = Double(unidades) * 1.25
            bonificacion = 0.00
            if unidades > 500 {
                bonificacion = 100.00
            }
        case 751...1025:
            comision = Double(unidades) * 1.45
            cientos = unidades / 100
            bonificacion = Double(cientos) * 50.00
        default:
            comision = Double(unidades) * 1.65
            bonificacion = 0.00
            if unidades >= 2000 {
                cientos = unidades / 100
                bonificacion = Double(cientos) * 75.00
            }
        }
    }
    
    func CalcSalarioNeto() -> Void {
        salarioNeto = salario + comision + bonificacion
    }
    
    func hacerCalculos() -> Void {
        CalcComisionBonificacion()
        CalcSalarioNeto()
        
    }
    
}
