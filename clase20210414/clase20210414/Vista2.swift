//
//  Vista2.swift
//  clase20210414
//
//  Created by Development on 4/15/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class Vista2: UIViewController {
    @IBOutlet weak var lblTexto: UILabel!
    @IBOutlet weak var txtCaptura: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCambio(_ sender: UIButton) {
        lblTexto.text = txtCaptura.text
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
