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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPregunta.text = "2^6 = 64"
    }

    @IBAction func botonRespuestaPresionado(_ sender: UIButton) {
    }
    
}

