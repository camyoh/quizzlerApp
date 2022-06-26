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
    
    var cerebroQuiz = CerebroQuiz()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        actualizarUI()
    }

    @IBAction func botonRespuestaPresionado(_ sender: UIButton) {
        let respuestaSeleccionada = sender.currentTitle!
        let  usuarioRespondioBien =  cerebroQuiz.verificarPregunta(respuestaSeleccionada)
        
        if usuarioRespondioBien {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        cerebroQuiz.siguientePregunta()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(actualizarUI), userInfo: nil, repeats: false)
    }
    
    @objc func actualizarUI() {
        labelPregunta.text = cerebroQuiz.obtenerPregunta()
        botonFalso.backgroundColor = UIColor.clear
        botonVerdadero.backgroundColor = UIColor.clear
        progressBar.progress = cerebroQuiz.obtenerProgreso()
    }
    
}

