//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Operador de asignacion

var a = 4

var b = 5

var (c,d,z,x) = (4,5,6,3)

var e = 0

e = a + b

print(z)


//Operadores aritmeticos

z = a + b
x = c + d
z = x - c
d = d * a
e = z / x
e = z % x
e = z / x

z = a + b * c + d
z = (a + b) * c + d
z = (a + b) * (c + d)

print (z)


//Operadores de comparacion
/*
 x == y Igual a
 x != No es igual a 
 x > y Mayor que
 x >= y Mayor o igual que
 x < y Menor q 
 x <= y Menor o igual que
 x === y dos objetos son iguales
 x!== y dos objetos no son iguales
 
 */

a = 100
b = 200


var r1 = a < b
r1 = a > b

var r2 = a == b
r2 = a != b

//Operador de rango
1...100
1..<100


//Operadores logicos
/*
 AND x && y
 OR  x ll y
 NOT !x
 
 */
var w  = false
var y = true

var p1 = w && y
var p2 = w || y
var p3 = !w && y


//Enumerados
enum State {
    case Inactive
    case Active
    case Hibernate
    case Terminated
}

var EstadoMaquina = State.Hibernate
EstadoMaquina = State.Active
EstadoMaquina = State.Terminated


//Arreglos

var arreglo1 = ["a","b","c"]
print(arreglo1[1])

var arreglo2 : [String] = [String]()
var arreglo3 : Array<String> = Array<String>()
arreglo3.append("Test1")
arreglo3.append("Test2")
arreglo3.append("Test3")
arreglo3.insert("Test", at: 2)
arreglo3[3]="TEST"
arreglo3.insert("TESTT", at: 4)
arreglo3.count

