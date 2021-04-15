//
//  ViewController.swift
//  clase20210407
//
//  Created by Development on 4/14/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myPickerView: UIPickerView!
    @IBOutlet weak var lblRenta: UILabel!
    @IBOutlet weak var txtSalario: UITextField!
    
    
    let pickerData = ["1 Semanal", "2 Quincenal", "3 Mensual"]
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
    
    //MARK: Data Sources
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    //MARK: Delegates
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    }
    
    @IBAction func hacerCalculo(_ sender: UIButton) {
        let inputSalario : Double = Double(txtSalario.text!)!
        let seleccion : Int = myPickerView.selectedRow(inComponent: 0)
        let calculoRenta = impuestoRenta(salario: inputSalario, fpago: seleccion)
        lblRenta.text = String(calculoRenta)
    }
    
    func impuestoRenta(salario : Double, fpago : Int) -> Double{
        var renta = 0.00
        if fpago == 2 {
            switch salario {
            case 0.01...472.00 :
                renta = 0.00
            case 472.01...895.24 :
                renta = ((salario - 472.00) * 0.10) + 17.67
            case 895.25...2038.10 :
                renta = ((salario - 895.24) * 0.20) + 60.00
            default:
                renta = ((salario - 2038.10) * 0.30) + 288.57
            }
        } else if fpago == 1 {
            switch salario {
            case 0.01...236.00 :
                renta = 0.00
            case 236.01...447.62 :
                renta = ((salario - 236.00) * 0.10) + 8.83
            case 447.63...1019.05 :
                renta = ((salario - 447.62) * 0.20) + 30.00
            default:
                renta = ((salario - 1019.05) * 0.30) + 144.28
            }
        } else if fpago == 0 {
            switch salario {
            case 0.01...118.00 :
                renta = 0.00
            case 118.01...223.81 :
                renta = ((salario - 118.00) * 0.10) + 4.42
            case 223.82...509.52 :
                renta = ((salario - 223.81) * 0.20) + 15.00
            default:
                renta = ((salario - 509.52) * 0.30) + 72.14
            }
        }
        return renta
    }
    
    

}

