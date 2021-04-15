//
//  Vendedor.swift
//  Parcial2561842015
//
//  Created by Development on 3/17/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class Vendedor {
    var vendedor : String = ""
    var salario : Double = 425.00
    
    var util = Utilidades()
    
    func capturarNombre() -> Void {
        print("Ingrese el nombre del vendedor: ")
        vendedor = util.leer()
    }

}
