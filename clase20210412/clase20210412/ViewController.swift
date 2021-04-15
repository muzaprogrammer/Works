//
//  ViewController.swift
//  clase20210412
//
//  Created by Development on 4/14/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var txtSalario: UITextField!
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var lblRenta: UILabel!
    
    var seleccion : Int = 0
    
    let opciones = ["1 Mensual", "2 Quincenal", "3 Semanal"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myPickerView.dataSource = self
        myPickerView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return opciones.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return opciones[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        seleccion = row
    }

    
    @IBAction func btnCalcular(_ sender: Any) {
        var objImpuestorenta : impuestoRenta = impuestoRenta()
        objImpuestorenta.salario = Double(txtSalario.text!)!
        switch seleccion {
            case 0:
            objImpuestorenta.rentamensual()
        case 1:
            objImpuestorenta.rentaquincenal()
        case 2:
            objImpuestorenta.rentasemanal()
        default:
            objImpuestorenta.renta = 0.00
        }
        lblRenta.text = String(objImpuestorenta.renta)
        
        
    }

}

