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
        "Las clases son reference type",
        "Las estructuras son reference type",
        "Puedo agregar valores nuevos a una tupla"
    ]
    
    var numeroPregunta = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPregunta.text = quiz[numeroPregunta]
    }

    @IBAction func botonRespuestaPresionado(_ sender: UIButton) {
        numeroPregunta += 1
    }
    
}

