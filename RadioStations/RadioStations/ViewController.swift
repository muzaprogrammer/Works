//
//  ViewController.swift
//  RadioStations
//
//
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var statioName: UILabel!
    @IBOutlet var statioFrequency: UILabel!
    @IBOutlet var statioBand: UILabel!
    
    var myStation: RadioStation
    var myStation1: RadioStation
    
   
    
    required init?(coder aDecoder: NSCoder)
    {
     myStation=RadioStation()
     myStation.frequency=102.5
     myStation.name="KNIX"
    
        myStation1=RadioStation()
        myStation1.frequency=507.5
        myStation1.name="RMYW"
     super.init(coder: aDecoder)
 
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func buttonClick(_ sender: AnyObject) {
        statioName.text=myStation.name
        statioFrequency.text=String (format: "%.1f",  myStation.frequency)
        
        if myStation.band() == 1 {
            
            
            statioBand.text="FM"
        } else{
             statioBand.text="No encontrado"
        }
    }
    
    
    @IBAction func buttonAM(_ sender: AnyObject) {
        
        statioName.text=myStation1.name
        statioFrequency.text=String (format: "%.1f",  myStation1.frequency)
        
        if myStation1.band() == 0 {
            
            statioBand.text="AM"
        } else{
            statioBand.text="No encontrado"
        }

    }

}

