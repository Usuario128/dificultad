//
//  ContentView.swift
//  Dificultad
//
//  Created by win603 on 10/09/25.
//

import SwiftUI

struct ContentView: View {
    @State var imagen: String = "1"
    @State var select: Int = 1
    @State var dialogo: String = "Bienvenido al nivel para principiantes"
    
    func cambiarImagen(_ seleccion: Int) {
        select = seleccion
        if seleccion == 1 {
            imagen = "1"
            dialogo = "Bienvenido al nivel para principiantes"
        } else if seleccion == 2 {
            imagen = "2"
            dialogo = "Haz decidido aumentar la dificultad"
        } else if seleccion == 3 {
            imagen = "3"
            dialogo = "Veo que te gustan los retos"
        } else if seleccion == 4 {
            imagen = "4"
            dialogo = "Ganar o perder, haz tu elección"
        }
    }
    
    var body: some View {
        VStack {
            Text("Selecciona el nivel de dificultad")
                .bold(true)
                .font(.title)
                .multilineTextAlignment(.center)
            Text(" ")
            
            Text(dialogo)
                .font(.headline)
                .multilineTextAlignment(.center)
            Text(" ")
            
            Image(imagen)
                .resizable()
                .frame(width: 200, height: 200)
            Text(" ")
            
            VStack {
                Button(action: {
                    withAnimation {
                        cambiarImagen(1)
                    }
                }) {
                    Text("Fácil")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(select == 1 ? Color.black : Color.cyan)
                .foregroundColor(.white)
                .cornerRadius(15)
                
                Button(action: {
                    withAnimation {
                        cambiarImagen(2)
                    }
                }) {
                    Text("Media")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(select == 2 ? Color.black : Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
                
                Button(action: {
                    withAnimation {
                        cambiarImagen(3)
                    }
                }) {
                    Text("Difícil")
                        .padding(10)
                        .frame(maxWidth: .infinity)
                }
                .background(select == 3 ? Color.black : Color.yellow)
                .foregroundColor(.white)
                .cornerRadius(5)
                
                Button(action: {
                    withAnimation {
                        cambiarImagen(4)
                    }
                }) {
                    Text("EXTREMA")
                        .padding(select == 4 ? 20:10)
                        .frame(maxWidth: .infinity)
                }
                .background(select == 4 ?Color.black : Color.red)
                .foregroundColor(.white)
                .cornerRadius(0)
            }
            .padding(.horizontal)
        }
    }
    
}
#Preview {
    ContentView()
}
