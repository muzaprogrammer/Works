//
//  ViewController.swift
//  clase20210324
//
//  Created by Development on 3/28/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var calculo: UISegmentedControl!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var txt1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func calcular(_ sender: UISegmentedControl) {
        var opcion : Int = 0
        var val1 : Int = 0
        var val2 : Int = 0
        var res : Int = 0
        val1 = Int(txt1.text!)!
        val2 = Int(txt2.text!)!
        
        opcion = calculo.selectedSegmentIndex
        switch opcion {
        case 0:
            res = val1 + val2
        case 1:
            res = val1 - val2
        case 2:
            res = val1 * val2
        case 3:
            res = val1 / val2
        default:
            res = 0
        }
        lblResultado.text = String(res)
    }
    
    @IBAction func cambio(_ sender: Any) {
        var dato : Int = 0
        dato = Int(txt2.text!)!
        if dato>0 {
            calculo.setEnabled(true, forSegmentAt: 3)
        } else {
            calculo.setEnabled(false, forSegmentAt: 3)
        }
    }
    
}

