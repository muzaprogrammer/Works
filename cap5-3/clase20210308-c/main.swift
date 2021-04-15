//
//  main.swift
//  clase20210308-c
//
//  Created by Development on 3/12/21.
//  Copyright © 2021 Development. All rights reserved.
//

import Foundation

print("Hello, World!")

var Book1 = Book()
var Periodico1 = Newspaper()
var Magazine1 = Magazine()
var Authors = Author()
Book1.Tittle = "Nombre libro"
Periodico1.date = "Fecha"
Authors.nameAuthor = "Mario Alberto"
Authors.lastNameAuthor = "Hernandez vasquezs"
Periodico1.tipografia = "Times Roman"

Magazine1.accion()

print(Book1.Tittle)
