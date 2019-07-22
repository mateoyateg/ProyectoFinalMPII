/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import modelo.Jugador;

/**
 *
 * @author braya
 */
public class BDTodaslasPuntuaciones {

    BDConexion conexion;
    private String nombre;
    ArrayList<Jugador> jugadores = new ArrayList<>();
    
    public BDTodaslasPuntuaciones(String nombreJuego){
        
        nombre = nombreJuego;
        conexion = new BDConexion();
    
    }
    
    public ArrayList creaObjetos() throws SQLException{
        
        String strSQL = "SELECT * FROM " + nombre+" ORDER BY puntos desc;";
        PreparedStatement pstm = conexion.getConexion().prepareStatement(strSQL);
        ResultSet res = pstm.executeQuery();
        while(res.next()){
            jugadores.add(new Jugador(res.getString(1), res.getString(2)));
        }
        
        return jugadores;
    }
}
