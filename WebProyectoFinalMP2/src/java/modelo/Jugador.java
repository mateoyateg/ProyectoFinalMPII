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
    String puntos;
    
    public Jugador(String nombreJugador, String puntosJuego){
        
        nombre = nombreJugador;
        puntos = puntosJuego;
        
    }

    public String getNombre() {
        return nombre;
    }

    public String getPuntos() {
        return puntos;
    }
    
    
}
