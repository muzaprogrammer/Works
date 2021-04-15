//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var clase = "Clase Feb 10, 2021"

// Boleans

var b1 : Bool = true

b1 = false

print(b1)

// Tuplas

let rectangulo1 = (x:1, y:2, width:200, heigth:100)
//print(rectangulo1)
print(rectangulo1.width)

var (f,g,h,i) = rectangulo1
print(f)
print(g)
print(h)
print(i)

var (x,_,_,y) = rectangulo1
print(x)
print(y)

var (m,n,_,_) = rectangulo1
print(m)
print(n)


// Opcionales
//?
//!

var u : String?
u = "XyZ"
print(u!)

// Tipos de alias

typealias Note = String
var descripcion : Note = ""
var concepto : Note = ""
descripcion =  "Las olas del mar"
print(descripcion)

typealias money = Double
var precio : money = 10.50
var couta : money = 63.65
precio =  couta - precio
print(precio)

//El ambito de la variable -- scope
var test1 : Int = 2
var flag : Bool = true

if (flag) {
    var test1 : Int = 5
    test1 = 75
    print(test1)

}
print(test1)

//Definicion de etiquetas

let testLabel = UILabel(frame: CGRect(x: 1, y: 1, width: 600, height: 200))
testLabel.textAlignment = NSTextAlignment.center
testLabel.backgroundColor = UIColor(red:0.9,green:0.0, blue:0.0, alpha:1.0)
testLabel.layer.cornerRadius=67
testLabel.layer.masksToBounds=true
testLabel.text = "Una etiqueta"
/*
 DEL CODIGO ANTERIOR MODIFICARLO PARA QUE EL TEXTO SEA DE UN TIPO DE LETRA ARIAL Y TAMANIO 25 DE COLOR AMARILLO
 */





