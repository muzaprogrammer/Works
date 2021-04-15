//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Estructura de repeticion while
var isTrue = true

while isTrue
{
    print(isTrue)
    isTrue = false
}

var x = 0

while x != 5
{
    print ("antes \(x)")
    x = x + 1
    print ("despues \(x)")

}

//Estructura de repeticion for
//for i in 0...10
for i in 0..<10
{
    print (i)

}


//Estructura de control if
var o = 5
var p = 7
var s = 8
if o > p {
    print ("Variable o \(o) es mayor que variable p \(p)")
} else {
    print ("Variable o \(o) es menor que variable p \(p)")
}

if o > p && s < p {
    print ("se cumplio 1")
}

if o > p || s < p {
    print ("se cumplio 2")
}

if o < p || s < p {
    print ("se cumplio 3")
}

if o < p && s < p {
    print ("se cumplio 4")
}


//Realizar cualquier operacion
var operacion = "+"
var num1 = 5
var num2 = 4
var res = 0

if operacion == "+" {
    res = num1 + num2
} else if operacion == "-" {
    res = num1 - num2
} else if operacion == "*" {
    res = num1 * num2
} else if operacion == "/" {
    res = num1 / num2
}

print ("\(num1) \(operacion) \(num2) = \(res)")

//Recorer un arreglo
var b : [String]=[String]()
b.append("dato1")
b.append("dato2")
b.append("dato3")
for k in b {
    print (k)
}

//Tabla de multiplicar
var tabla = 2
for i in 1...10
{
    print ("\(tabla) * \(i) = \(tabla*i)")
    
}
