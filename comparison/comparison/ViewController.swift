//
//  ViewController.swift
//  comparison
//
// 
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MostrarMens: UILabel!
    @IBOutlet weak var acceso: UILabel!
    @IBOutlet weak var usuario: UITextField!
    @IBOutlet weak var contraseña: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func Iniciar(_ sender: UIButton) {
        
        MostrarMens.text="duck"
        acceso.text="12345"
        if MostrarMens.text==usuario.text && acceso.text==contraseña.text {
            MostrarMens.text=" Acceso Correcto "
            acceso.text=" Bienvenido "
        }
        else {
            MostrarMens.text=" Credenciales invalidas "
            acceso.text=" Acceso Denegado "
        }

        
    }
}

