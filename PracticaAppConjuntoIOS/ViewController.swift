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
    @IBOutlet weak var botonLimpiar: UIButton!
    
    
    @IBAction func textoSetChange(_ sender: UITextField) {
        if(!textoConjuntoA.text!.isEmpty){
            botonAsignarSetA.isEnabled = true
        }
    }
    
    @IBAction func botonAsignarSetA(_ sender: UIButton) {
        if(!textoConjuntoA.text!.isEmpty){
            let cadena:[String] = textoConjuntoA.text!.components(separatedBy: ",")
            for valor in cadena{
                setA.insert(valor)
            }
        }
        botonUnion.isEnabled = true
    }
    
    
    @IBAction func textoSetChangedSetB(_ sender: UITextField) {
        if(!textoConjuntoB.text!.isEmpty){
            botonAsignarSetB.isEnabled = true
        }
    }
    
    @IBAction func botonAsignarSetB(_ sender: UIButton) {
        if(!textoConjuntoB.text!.isEmpty){
            let cadena:[String] = textoConjuntoB.text!.components(separatedBy: ",")
            for valor in cadena{
                setB.insert(valor)
            }
        }
        botonUnion.isEnabled = true
    }
    
    // MARK: - Operaciones de Conjuntos
    @IBAction func botonUnion(_ sender: UIButton) {
        if setA.isEmpty && setB.isEmpty {
            labelResultado.text = "Error: Ambos conjuntos están vacíos"
            return
        }
        let union = setA.union(setB)
        mostrarResultado(operacion: "Unión", resultado: union)
    }

    @IBAction func botonInterseccion(_ sender: UIButton) {
        let interseccion = setA.intersection(setB)
        mostrarResultado(operacion: "Intersección", resultado: interseccion)
    }

    @IBAction func botonDiferencia(_ sender: UIButton) {
        let diferencia = setA.subtracting(setB)
        mostrarResultado(operacion: "Diferencia (A-B)", resultado: diferencia)
    }

    @IBAction func botonDiferenciaB(_ sender: UIButton) {
        let diferencia = setB.subtracting(setA)
        mostrarResultado(operacion: "Diferencia (B-A)", resultado: diferencia)
    }

    @IBAction func botonDiferenciaSimetrica(_ sender: UIButton) {
        let difSimetrica = setA.symmetricDifference(setB)
        mostrarResultado(operacion: "Diferencia Simétrica", resultado: difSimetrica)
    }

    @IBAction func botonLimpiar(_ sender: UIButton) {
        setA.removeAll()
        setB.removeAll()
        textoConjuntoA.text = ""
        textoConjuntoB.text = ""
        labelResultado.text = "Resultado: "
        botonAsignarSetA.isEnabled = false
        botonAsignarSetB.isEnabled = false
        botonUnion.isEnabled = false
    }

    // Método auxiliar para mostrar resultados
    private func mostrarResultado(operacion: String, resultado: Set<String>) {
        let elementos = Array(resultado).sorted().joined(separator: ", ")
        labelResultado.text = "\(operacion): {\(elementos)}"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        botonAsignarSetA.isEnabled = false
        botonAsignarSetB.isEnabled = false
        botonUnion.isEnabled = false
        labelResultado.text = "Resultado: "
    }

    //hola mundo
}

