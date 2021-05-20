//
//  ViewController.swift
//  parcial42561842015
//
//  Created by Development on 5/19/21.
//  Copyright © 2021 Development. All rights reserved.
//


//  Mario Alberto Hernandez Vasquez
//  25-6184-2015

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    var managedObjectContext : NSManagedObjectContext!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate : AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        managedObjectContext = appDelegate.persistentContainer.viewContext as NSManagedObjectContext
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func agregarRegistro(_ sender: UIBarButtonItem) {
        let Informacion: Informacion = NSEntityDescription.insertNewObject(forEntityName: "Informacion", into: managedObjectContext) as! Informacion
        Informacion.frases = "Libro de Texto"
        do {
            try managedObjectContext.save()
        } catch let error as NSError {
            NSLog("My Error: %@", error)
        }
        myTableView.reloadData()
    }
    
    func loadInfo() -> [Informacion] {
        let fetchRequest : NSFetchRequest<Informacion> = Informacion.fetchRequest()
        var result: [AnyObject] = []
        do {
            result = try managedObjectContext.fetch(fetchRequest)
        } catch let error as NSError {
            NSLog("My error: %@", error)
        }
        return result as! [Informacion]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return loadInfo().count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as UITableViewCell?
        let Informacion: Informacion = loadInfo()[indexPath.row]
        cell?.textLabel?.text = Informacion.frases
        return cell!
    }

}

