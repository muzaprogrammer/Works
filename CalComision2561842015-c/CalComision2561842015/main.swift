//
//  main.swift
//  CalComision2561842015
//
//  Created by Development on 3/7/21.
//  Copyright © 2021 Development. All rights reserved.
//
// Mario Alberto Hernandez Vasquez
// 2561842015

import Foundation

var salario : Double = 0.00
var unidades : Int = 0
var comision : Double = 0.00
var valor1 : Double = 0.00
var valor2 : Double = 0.00
var salarioneto : Double = 0.00

func leer() -> String {
    var entrada : String
    entrada = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    entrada = entrada.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return entrada
}
var linea1 : String = ""
linea1 = String(repeating: "\u{2550}", count: 25)
print("\u{2554}\(linea1)\u{2557}")
print("\u{2551} Calculo de salario neto \u{2551}")
print("\u{255A}\(linea1)\u{255D}")

print("Ingrese salario neto")
salario = Double(leer())!

print("Ingrese el numero de unidades")
unidades = Int(leer())!


var comi = CalComi()
comi.uni = unidades
comision = comi.comision() + comi.premio()
salarioneto = salario+comision
print("Comision: \(comision)")
print("Salario neto: \(salarioneto)")

//Del anterior programa hacer las siguientes mejoras
/*
Crear una clase de nombre CalComi
Incorporar dos metodos para calcular la comision y el premio
 
*/
