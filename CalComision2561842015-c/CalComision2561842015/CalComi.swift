import Foundation
class CalComi {
    var uni : Int = 0
    var valor1 : Double = 0.00
    var valor2 : Double = 0.00
    func comision() -> Double {
        switch uni {
        case 0...100:
            valor1 = 0.00
        case 101...200:
            valor1 = 0.02
        case 201...300:
            valor1 = 0.03
        case 301...400:
            valor1 = 0.04
        case 401...500:
            valor1 = 0.05
        case 501...600:
            valor1 = 0.06
        case 601...700:
            valor1 = 0.07
        case 701...800:
            valor1 = 0.08
        case 801...900:
            valor1 = 0.09
        case 901...1000:
            valor1 = 0.10
        default:
            valor1 = 0.11
        }
        return Double(unidades)*valor1
    }
    func premio() -> Double {
        valor2 = 0.00
        if uni>=350 && uni<=400 {
            valor2 = 0.01
        }
        if uni>=650 && uni<=700 {
            valor2 = 0.013
        }
        if uni>=950 && uni<=1000 {
            valor2 = 0.015
        }
        if uni>=1500 {
            valor2 = 0.02
        }
        return Double(unidades)*valor2
    }    
}
