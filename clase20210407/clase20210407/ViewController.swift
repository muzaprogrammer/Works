//
//  ViewController.swift
//  clase20210407
//
//  Created by Development on 4/14/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myPickerView: UIPickerView!
    
    let pickerData = ["Mozarella", "Gorgonzola", "Provolone", "Sharp Chedar", "Monterey Jack", "Gouda Chesse", "Asiago", "Mozarella", "Gorgonzola", "Provolone", "Sharp Chedar", "Monterey Jack", "Gouda Chesse", "Asiago"]
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
        myLabel.text = pickerData[row]
    }

}

