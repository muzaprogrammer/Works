//
//  ViewController.swift
//  cap6-1
//
//  Created by Development on 4/21/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblPrueba: UILabel!
    @IBOutlet weak var lblPrueba2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnVer(_ sender: Any) {
        lblNombre.text = "Mario Hernandez"
    }

    @IBAction func btnAccion(_ sender: Any) {
        lblPrueba.text = "Texto 2"
    }
    @IBAction func btnAccion2(_ sender: UIButton) {
        lblPrueba2.text = "Texto de prueba 3"
    }
}

