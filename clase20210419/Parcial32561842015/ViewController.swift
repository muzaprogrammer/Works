//
//  ViewController.swift
//  Parcial32561842015
//
//  Created by Development on 4/21/21.
//  Copyright © 2021 Development. All rights reserved.
//

// Mario Alberto Hernandez Vasquez
// 2561842015
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var dato: UITextField!
    var lista : [String] = [""]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnGuardar(_ sender: UIButton) {
        lista.append(dato.text!)
        dato.text = ""
    }
    
    @IBAction func btnLista(_ sender: UIButton) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc2 = segue.destination as? ViewController2
        vc2?.listDatos = lista
    }

}

