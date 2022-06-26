//
//  CerebroQuiz.swift
//  quizzlerApp
//
//  Created by Andres Mendieta on 6/26/22.
//

import Foundation

struct CerebroQuiz {
    private let quiz = [
        Pregunta(texto: "Las clases son reference type", respuesta: "Verdadero"),
        Pregunta(texto: "Las estructuras son reference type", respuesta: "Falso"),
        Pregunta(texto: "Puedo agregar valores nuevos a una tupla", respuesta: "Falso")
    ]
    
    private var numeroPregunta = 0
    private var puntaje = 0
    
    mutating func verificarPregunta(_ respuesta: String) -> Bool {
        if respuesta == quiz[numeroPregunta].respuesta {
            puntaje += 1
            return true
        } else {
            return false
        }
    }
    
    func obtenerPregunta() -> String { quiz[numeroPregunta].texto }
    
    func obtenerProgreso() -> Float { Float(numeroPregunta + 1) / Float(quiz.count) }
    
    func obtenerPuntaje() -> String { "\(puntaje)/\(quiz.count)" }
    
    mutating func siguientePregunta() {
        if numeroPregunta + 1 < quiz.count {
            numeroPregunta += 1
        } else {
            numeroPregunta = 0
            puntaje = 0
        }
    }
}
