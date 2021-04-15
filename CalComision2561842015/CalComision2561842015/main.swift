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

switch unidades {
case 0...100:
    valor1 = 0.00
case 101...200:
    valor1 = 0.02
case 201...300:
    valor1 = 0.03
case 301...400:
    valor1 = 0.04
    if unidades>=350 && unidades<=400 {
        valor2 = 0.01
    }
case 401...500:
    valor1 = 0.05
case 501...600:
    valor1 = 0.06
case 601...700:
    valor1 = 0.07
    if unidades>=650 && unidades<=700 {
        valor2 = 0.013
    }case 701...800:
    valor1 = 0.08
case 801...900:
    valor1 = 0.09
case 901...1000:
    valor1 = 0.10
    if unidades>=950 && unidades<=1000 {
        valor2 = 0.015
    }
default:
    valor1 = 0.11
    if unidades>=1500 {
        valor2 = 0.02
    }
}

comision = (Double(unidades)*valor1) + (Double(unidades)*valor2)
salarioneto = salario+comision
print("Comision: \(comision)")
print("Salario neto: \(salarioneto)")

//Del anterior programa hacer las siguientes mejoras
/*
Crear una clase de nombre CalComi
Incorporar dos metodos para calcular la comision y el premio
 
*/
