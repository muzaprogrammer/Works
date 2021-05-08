//
//  ViewController.swift
//  clase20210505c
//
//  Created by Development on 5/7/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var txtname: UITextField!
    @IBOutlet weak var txtlastname: UITextField!
    @IBOutlet weak var txtage: UITextField!
    @IBOutlet weak var txthourlyrate: UITextField!
    @IBOutlet weak var txtemployeenumber: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnPerson(_ sender: Any) {
        let p1 = Person()
        p1.name = txtname.text!
        p1.lastName = txtlastname.text!
        p1.age = Int(txtage.text!)!
        lblResultado.text = p1.profile()
    }


    @IBAction func btnEmployee(_ sender: Any) {
        
        let e1 = Employee()
        e1.name = txtname.text!
        e1.lastName = txtlastname.text!
        e1.employeeNumber = Int(txtemployeenumber.text!)!
        e1.hourlyrate = Double(txthourlyrate.text!)!
         lblResultado.text = e1.profile()
    }
}

