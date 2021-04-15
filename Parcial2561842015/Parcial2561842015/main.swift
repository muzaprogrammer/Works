//
//  main.swift
//  Parcial2561842015
//
//  Created by Development on 3/17/21.
//  Copyright © 2021 Development. All rights reserved.
//


//  Mario Alberto Hernandez Vasquez
//  25-6184-2015

import Foundation

var util = Utilidades()
var venta = Ventas()


util.pregunta(pregunta: "Bienvenido al programa de calculo de salario, desea hacer un calculo? S/N")
while util.ciclo {
    print("Esta en calculo de salario")
    
    venta.capturarNombre()
    venta.capturarUnidades()
    venta.hacerCalculos()
    
    util.guardarDatos(
        vendedor: venta.vendedor,
        unidades: String(venta.unidades),
        comision: String(venta.comision),
        bonificacion: String(venta.bonificacion),
        salarioNeto: String(venta.salarioNeto))
    
    util.pregunta(pregunta: "Desea hacer otro calculo S/N: ")
}

util.imprLista()

print("Gracias")
