//
//  WeatherModel.swift
//  ProjetWatchOs Watch App
//
//  Created by Rafiq Messai on 01/03/2024.
//

import Foundation

class WeatherModel: ObservableObject {
    @Published var temperature: Double = 20.0
    @Published var humidity: Double = 50.0
    // Ajoutez d'autres données météorologiques nécessaires
    
    func increaseTemperature() {
        temperature += 1.0
        // Envoyer la commande à l'objet connecté via Homebridge
        // Exemple : homebridge.sendCommand("increase_temperature")
    }
    
    func decreaseTemperature() {
        temperature -= 1.0
        // Envoyer la commande à l'objet connecté via Homebridge
        // Exemple : homebridge.sendCommand("decrease_temperature")
    }
}
