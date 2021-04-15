//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Estructuras
struct Rectangulo {
    var x : Int = 0
    var y : Int = 0
    var ancho : Int = 0
    var alto : Int = 0
    func detalle() -> String {
        return "x=\(x), y=\(y), alto=\(alto), ancho=\(ancho)"
    }
}

var rectangulo1 = Rectangulo()

rectangulo1.alto = 15
rectangulo1.ancho = 25
rectangulo1.x = 5
rectangulo1.y = 6

print("Datos del rectangulo: x=\(rectangulo1.x), y=\(rectangulo1.y), alto=\(rectangulo1.alto), ancho=\(rectangulo1.ancho)")

print("Datos del rectangulo: \(rectangulo1.detalle())")

//Clases

class Persona {
    var nombre : String = "Mi nombre"
    var edad : Int = 0
    
    func perfil() -> String {
        return "Mi nombre es \(self.nombre) de edad \(self.edad)"
    }
}

var pr1 =  Persona()
pr1.nombre = "Juan"
pr1.edad = 25
print(pr1.perfil())

var pr2 = Persona()
pr2.nombre = "Jill"
pr2.edad = 40
print(pr2.perfil())

var pr3 = Persona()
pr3.nombre = "Juan"
pr3.edad = 25
print(pr3.perfil())


var b1 = pr1 === pr2
var b2 = pr2 === pr2
var b3 = pr1 === pr3

//Herencia
class PrintedMaterial {
    var Tittle : String = ""
    var PublisDate : String = ""
    var PageCount : String = ""
    var Price : String = ""
    var Publisher : String = ""
    
    func accion() -> String {
        return ""
    }
}

class Book : PrintedMaterial {
    var Author : String = ""
    var Genre : String = ""
    var Edition : String = ""
}

class Magazine : PrintedMaterial {
    var issue : String = ""
    var Genre : String = ""
}

class Newspaper : PrintedMaterial {
    var date : String = ""
}

var Book1 = Book()
var Periodico1 = Newspaper()
var Magazine1 = Magazine()
Book1.Tittle = "Nombre libro"
Periodico1.date = "Fecha"
Magazine1.accion()
