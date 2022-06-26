//
//  ViewController.swift
//  quizzlerApp
//
//  Created by Andres Mendieta on 6/25/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelPregunta: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var botonVerdadero: UIButton!
    @IBOutlet weak var botonFalso: UIButton!
    
    let quiz = [
        ["Las clases son reference type", "Verdadero"],
        ["Las estructuras son reference type", "Falso"],
        ["Puedo agregar valores nuevos a una tupla", "Falso"]
    ]
    
    var numeroPregunta = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actualizarUI()
    }

    @IBAction func botonRespuestaPresionado(_ sender: UIButton) {
        let respuestaSeleccionada = sender.currentTitle
        let respuestaCorrecta = quiz[numeroPregunta][1]
        
        if respuestaSeleccionada == respuestaCorrecta {
            print("Correcto")
        } else {
            print("Incorrecto")
        }
        
        if numeroPregunta + 1 < quiz.count {
            numeroPregunta += 1
        } else {
            numeroPregunta = 0
        }
        actualizarUI()
    }
    
    func actualizarUI() {
        labelPregunta.text = quiz[numeroPregunta][0]
    }
    
}

