//
//  ViewController.swift
//  AppConjuntosIOS
//
//  Created by Jared Esquivel on 02/11/25.
//

import UIKit

class ViewController: UIViewController {
    
    var setA = Set<String>()
    var setB = Set<String>()
    
    
    @IBOutlet weak var textoConjuntoA: UITextField!
    @IBOutlet weak var textoConjuntoB: UITextField!
    @IBOutlet weak var botonAsignarSetA: UIButton!
    @IBOutlet weak var botonAsignarSetB: UIButton!
    @IBOutlet weak var botonUnion: UIButton!
    @IBOutlet weak var labelResultado: UILabel!
    
    
    @IBAction func textoSetChange(_ sender: UIButton) {
        if(!textoConjuntoA.text!.isEmpty){
            botonAsignarSetA.isEnabled = true
        }
    }
    
    @IBAction func botonAsignarSetA(_ sender: UIButton) {
        if
    }
    
    
    @IBAction func textoSetChangedSetB(_ sender: UITextField) {
        if(!textoConjuntoB.text!.isEmpty){
            botonAsignarSetB.isEnabled = true
        }
    }
    
    
    @IBAction func botonAsignarSetB(_ sender: UIButton) {
        if(!textoConjuntoB.text!.isEmpty){
        let cadena:[String] =
            textoConjuntoB!.text!.components(separatedBy: ",")
        for valor in cadena{
            setB.insert(valor)
            }
        }
    botonUnion.isEnabled = true
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //hola mundo
}

