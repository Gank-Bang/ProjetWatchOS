//
//  ContentView.swift
//  ProjetWatchOs Watch App
//
//  Created by Rafiq Messai on 01/03/2024.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var weatherModel = WeatherModel()
    
    var body: some View {
        VStack {

            Text("Température: \(weatherModel.temperature) °C")
                
            
            Text("Humidité: \(weatherModel.humidity)%")
                .padding()
            
            Button(action: {
                // Augmenter la température
                weatherModel.increaseTemperature()
            }) {
                Text("Augmenter")
                    .padding()

                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Button(action: {
                // Diminuer la température
                weatherModel.decreaseTemperature()
            }) {
                Text("Diminuer")
                    .padding()
                    
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

