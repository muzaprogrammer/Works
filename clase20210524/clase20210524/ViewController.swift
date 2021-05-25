//
//  ViewController.swift
//  clase20210524
//
//  Created by Development on 5/24/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMensaje: UITextField!
    @IBOutlet weak var lblMostrar: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnPresentar(_ sender: UIButton) {
        var ls_dato:String=""
        ls_dato = txtMensaje.text!
        lblMostrar.text = ls_dato
    }
}

