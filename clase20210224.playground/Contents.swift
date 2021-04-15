//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Funciones

func getPharse() -> String {
    return "Hola Swift"
}

var mensaje = getPharse()

print(mensaje)


func operaciones(val1:Int, val2:Int) -> Int {
    let res = val1 + val2
    return res
}

var result = operaciones(val1: 2, val2: 3)
