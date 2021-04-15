//
//  Utilidades.swift
//  Parcial2561842015
//
//  Created by Development on 3/17/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

class Utilidades {
    
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

    func guardarDatos(
        vendedor : String,
        unidades : String,
        comision: String,
        bonificacion : String,
        salarioNeto : String) {
        
        detalles = []
        
        detalles.insert(vendedor, at: 0)
        detalles.insert(unidades, at: 1)
        detalles.insert(comision, at: 2)
        detalles.insert(bonificacion, at: 3)
        detalles.insert(salarioNeto, at: 4)
        
        valores.append(detalles)
    }
    
    func completarString(string : String, tipo : Int) -> String {
        var num : Int = 0
        var text : String = ""
        text = string
        if tipo == 1 {
            num = 20 - string.characters.count
            for _ in 1...num {
                text += " "
            }
        } else if tipo == 2 {
            num = 12 - string.characters.count
            for _ in 1...num {
                text += " "
            }
        } else if tipo == 3 {
            num = 15 - string.characters.count - 3
            text = "  $"
            for _ in 1...num {
                text += " "
            }
            text = text + string
        } else if tipo == 4 {
            num = 15 - string.characters.count - 3
            text = "  $"
            for _ in 1...num {
                text += " "
            }
            text = text + string
        } else if tipo == 5 {
            num = 15 - string.characters.count - 3
            text = "  $"
            for _ in 1...num {
                text += " "
            }
            text = text + string
        } else if tipo == 6 {
            num = 15 - string.characters.count - 2
            text = "  "
            text += string
            for _ in 1...num {
                text += " "
            }
        }
        return text
    }
    
    func imprLista() {
        var linea1 : String = ""
        var texto : String = ""
        texto = completarString(string: "Nombre", tipo: 1)
            + completarString(string: "Unidades", tipo: 2)
            + completarString(string: "Comision", tipo: 6)
            + completarString(string: "Bonificacion", tipo: 6)
            + completarString(string: "Salario neto", tipo: 6)
        
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

}
