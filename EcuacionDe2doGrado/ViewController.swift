//
//  ViewController.swift
//  EcuacionDe2doGrado
//
//  Created by user196197 on 8/28/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var atxt: UITextField!
    @IBOutlet var btxt: UITextField!
   
    @IBOutlet weak var solbtn: UIButton!
   
    @IBOutlet var ctxt: UITextField!
    @IBOutlet var solb: UITextField!
    @IBOutlet var sola: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func solbtnAct(_ sender: UIButton) {
        
        sola.text = ""
        solb.text = ""
        
        let a: Float = (Float)(atxt.text!)!
        let b: Float = (Float)(btxt.text!)!
        let c: Float = (Float)(ctxt.text!)!
        
        var Delta: Float
        var x1: Float
        var x2: Float

        
        if (a==0){
            sola.text = "No es una ecuacion de 2do Grado"
            solb.text = "No es una ecuacion de 2do Grado"
        }else{
            Delta = (b*b-(4*a*c))
            if (Delta==0){
                x1 = (-b/(2*a))
                x2 = (-b/(2*a))
                sola.text = String(x1)
                solb.text = String(x2)
            }else{
                x1 = ((-b + ((sqrt(Delta)))) / 2*a)
                x2 = ((-b + ((sqrt(Delta)))) / 2*a)
                sola.text = "/(x1)"
                solb.text = "/(x2)"
            }
        }
    }
    
}

