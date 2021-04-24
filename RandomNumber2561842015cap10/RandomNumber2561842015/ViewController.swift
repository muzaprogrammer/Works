//
//  ViewController.swift
//  RandomNumber2561842015
//
//  Created by Development on 4/14/21.
//  Copyright © 2021 Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    @IBOutlet weak var fechaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fech()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func seeAction(_ sender: UIButton) {
        srandom(CUnsignedInt(time(nil)))
        randomNumberLabel.text = "Generator seeded"
        
    }
    @IBAction func btnActualizar(_ sender: UIButton) {
        fech()
    }
    
    func fech() {
        let date=Date()
        let d_format=DateFormatter()
        d_format.dateStyle = .full
        // d_format.dateFormat="dd-MM-yy"
        fechaLabel.text=d_format.string(from: date)
        
        let time=Date()
        let t_format=DateFormatter()
        t_format.timeStyle = .medium
        horaLabel.text=t_format.string(from: time)
    }
    
    @IBAction func generateAction(_ sender: Any) {
        let generated = (arc4random() % 100) + 1
        randomNumberLabel.text = "\(generated)"
    }
    
}

