//
//  ViewController.swift
//  clase20210503
//
//  Created by Development on 5/5/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        
        let newProduct = NSEntityDescription.insertNewObject(forEntityName: "Productos", into: context)
        
        newProduct.setValue("Producto 1", forKey: "nombre")
        newProduct.setValue("PRD1", forKey: "codigo")
        newProduct.setValue("10lt", forKey: "medida")
        
        do {
            try context.save()
            print("Gravado")
        } catch {
           print("Error")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Productos")
        request.returnsObjectsAsFaults = false
        
        do {
            let results = try context.fetch(request)
            if results.count > 0 {
                for result in results as! [NSManagedObject] {
                    if let codProd = result.value(forKey: "codigo") as? String {
                        let nomProd =  result.value(forKey: "nombre") as? String
                        let medProd =  result.value(forKey: "medida") as? String
                        print ("Producto: \(codProd) | \(nomProd) | \(medProd)")
                    } else {
                        print("Sin Productos")
                    }
                }
            }
        } catch {
            print("Sin resultados")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

