//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var a : [String] = [String]()

a.append("Practica 1")
a.append("Practica 2")
a.append("Practica 3")

a.remove(at: 2)

a.removeAll()

a.append("Test1")
a.append("Test2")
a.append("Test3")

a.removeFirst()
a.removeLast()

a.insert("Test1", at: 0)
a.insert("Test3", at: 2)

//El valor a insertar debe de estar dentro del rango de posiciones del arreglo
//a.insert("Test4", at: 7)

//Ejercicio: Elaborar un arreglo que almacene 6 numeros agregando 3 con append y 3 con insert

var nums : [Int] = [Int]()
nums.append(1)
nums.append(2)
nums.append(3)
nums.insert(4, at:3)
nums.insert(5, at:4)
nums.insert(6, at:5)

nums.insert(3, at: 6)
nums.remove(at: 2)