//
//  main.swift
//  calRenta2561842015
//
//  Created by Development on 3/12/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

var nombre : String = ""
var dui : String = ""
var salario : Double = 0.00
var fpago : Character = "-"
var renta : Double = 0.00

var ciclo : Bool = true
var inicio : Bool = true

var valores : [[String]] = []
var detalles : [String] = []


func leer() -> String {
    var entrada : String
    entrada = NSString(data: FileHandle.standardInput.availableData, encoding:String.Encoding.utf8.rawValue)! as String
    entrada = entrada.replacingOccurrences(of: "\n", with: "", options: NSString.CompareOptions.literal, range: nil)
    return entrada
}


func pregunta(pregunta : String) -> Void {
    inicio = true
    while inicio {
        print(pregunta)
        let str : String = leer()
        if str == "S" {
            inicio =  false
            ciclo = true
        } else if str == "N" {
            inicio = false
            ciclo = false
        } else {
            print("No ingreso una opcion valida")
        }
    }
}


func leerDui() -> String {
    inicio = true
    while inicio {
        print("Ingrese el numero de DUI con guiones: ")
        let str : String = leer()
        if str.characters.count == 10 {
            inicio =  false
            dui = str
        } else {
            print("No ingreso un DUI valido")
        }
    }
    return dui
}

func leerFormaPago() -> Character {
    inicio = true
    while inicio {
        print("Ingrese la forma de pago. Semanal -> 'S', Quincenal -> 'Q' o Mensual -> 'M'")
        let str : String = leer()
        if str.characters.count == 1 && (str == "S" || str == "Q" || str == "M") {
            inicio =  false
            fpago = Character(str)
        } else {
            print("No ingreso una opcion valida")
        }
    }
    return fpago
}

func impuestoRenta(salario : Double, fpago : Character) -> Double{
    renta = 0.00
    if fpago == "M" {
        switch salario {
        case 0.01...472.00 :
            renta = 0.00
        case 472.01...895.24 :
            renta = ((salario - 472.00) * 0.10) + 17.67
        case 895.25...2038.10 :
            renta = ((salario - 895.24) * 0.20) + 60.00
        default:
            renta = ((salario - 2038.10) * 0.30) + 288.57
        }
    } else if fpago == "Q" {
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
    } else if fpago == "S" {
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
    return renta
}

func guardarDatos(nombre : String, dui : String, fpago: String, salario : String, renta : String) {
    detalles = []
    detalles.insert(dui, at: 0)
    detalles.insert(nombre, at: 1)
    detalles.insert(salario, at: 2)
    detalles.insert(fpago, at: 3)
    detalles.insert(renta, at: 4)
    
    valores.append(detalles)
}

func completarString(string : String, tipo : Int) -> String {
    var num : Int = 0
    var text : String = ""
    text = string
    if tipo == 1 {
        num = 12 - string.characters.count
        for _ in 1...num {
            text += " "
        }
    } else if tipo == 2 {
        num = 35 - string.characters.count
        for _ in 1...num {
            text += " "
        }
    } else if tipo == 3 {
        num = 11 - string.characters.count - 1
        text = "$"
        for _ in 1...num {
            text += " "
        }
        text = text + string
    } else if tipo == 4 {
        num = 4 - string.characters.count
        text = "  "
        text += string
        for _ in 1...num {
            text += " "
        }
    } else if tipo == 5 {
        num = 11 - string.characters.count - 1
        text = "$"
        for _ in 1...num {
            text += " "
        }
        text = text + string
    } else if tipo == 6 {
        num = 11 - string.characters.count
        for _ in 1...num {
            text += " "
        }
    }
    return text
}

func imprLista() {
    var linea1 : String = ""
    var texto : String = ""
    texto = completarString(string: "DUI", tipo: 1)
        + completarString(string: "NOMBRE", tipo: 2)
        + completarString(string: "SALARIO", tipo: 6)
        + completarString(string: "FP", tipo: 4)
        + completarString(string: "RENTA", tipo: 6)
    
    linea1 = String(repeating: "\u{2550}", count: texto.characters.count+2)
    print("\u{2554}\(linea1)\u{2557}")
    print("\u{2551} \(texto) \u{2551}")
    print("\u{2560}\(linea1)\u{2563}")
    
    for values1 in valores {
        texto = ""
        var i = 0
        for values2 in values1 {
            i = i + 1
            texto = texto + completarString(string: values2, tipo: i)
        }
        print("\u{2551} \(texto) \u{2551}")
    }
    print("\u{255A}\(linea1)\u{255D}")
}

func captura() -> Void {
    print("Ingrese el nombre: ")
    nombre = leer()
    dui = leerDui()
    fpago = leerFormaPago()
    print("Ingrese el salario: ")
    salario = Double(leer())!
    renta = impuestoRenta(salario: salario, fpago: fpago)
    
    guardarDatos(nombre: nombre, dui: dui, fpago: String(fpago), salario: String(format: "%.2f",salario), renta: String(format: "%.2f",renta))
}

pregunta(pregunta: "Bienvenido al calculo de renta. Desea hacer un calculo S/N: ")
while ciclo {
    print("Esta en calculo de renta")
    captura()
    pregunta(pregunta: "Desea hacer otro calculo calculo S/N: ")
}

imprLista()

print("Gracias")
