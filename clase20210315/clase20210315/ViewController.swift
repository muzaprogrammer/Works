//
//  ViewController.swift
//  clase20210315
//
//  Created by Development on 3/17/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensaje: UITextField!
    @IBOutlet weak var verMensaje: UILabel!
    @IBOutlet weak var mostrar: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func asignarMensaje(_ sender: UIButton) {
        verMensaje.text = mensaje.text
    }

}

