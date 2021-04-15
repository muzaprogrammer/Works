//
//  ViewController.swift
//  capitulo10RandomNumber
//
//  Created by alexis on 25/3/21.
//  Copyright © 2021 alexis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fechaLabel: UILabel!
    @IBOutlet weak var randomNumberLabel: UILabel!
    @IBOutlet weak var randomGuess: UITextField!
    @IBOutlet weak var guessCheck: UILabel!
    @IBOutlet weak var horaLabel: UILabel!
    
 /*   func fech() {
        let today=Date()
        let d_format=DateFormatter()
        d_format.dateFormat="dd-MM-yy"
        fechaLabel.text=d_format.string(from: today)
        horaLabel.text="DD-MM-YY"
    }
*/
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        fech()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func seedAction(_ sender: UIButton) {
  srandom(CUnsignedInt(time(nil)))
        randomNumberLabel.text="Generator seended"
        
    }

    @IBAction func generateAction(_ sender: UIButton) {
        let generated = (arc4random() % 100) + 1
        randomNumberLabel.text="\(generated)"
    }
    
    
    @IBAction func checkGuess(_ sender: UIButton) {
       
        if randomGuess.text == randomNumberLabel.text {
            guessCheck.text="Correct Number"
        }
        else{
            // no reason to check if userGuess < randomNumber. It has to be.
            guessCheck.text=" Wrong Number "
        }
    }
    
    @IBAction func updateDate(_ sender: UIButton) {
        fech()
    }
}



//

