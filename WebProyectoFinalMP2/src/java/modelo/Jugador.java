/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author braya
 */
public class Jugador {
    
    String nombre;
    int puntos;
    
    public Jugador(String nombreJugador, String puntosJuego){
        
        nombre = nombreJugador;
        puntos = Integer.parseInt(puntosJuego);
        
    }

    public String getNombre() {
        return nombre;
    }

    public int getPuntos() {
        return puntos;
    }
    
    
}
