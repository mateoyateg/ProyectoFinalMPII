/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;
import modelo.Jugador;

/**
 *
 * @author braya
 */
public class BDModificaPuntuaciones {

    private String nombre;
    BDConexion conexion;

    public BDModificaPuntuaciones(String nombreJuego) {

        nombre = nombreJuego;
        conexion = new BDConexion();

    }

    public void insertaDatos(String nombreJugador, String puntos) throws SQLException {

        String strSQL = "SELECT * FROM " + nombre + " WHERE jugador='" + nombreJugador + "';";
        PreparedStatement pstm = conexion.getConexion().prepareStatement(strSQL);
        ResultSet res = pstm.executeQuery();
        boolean siguiente = res.next();
        if (siguiente == false) {
            strSQL = "INSERT INTO " + nombre + " VALUES ('" + nombreJugador + "', '" + Integer.parseInt(puntos) + "');";
            pstm = conexion.getConexion().prepareStatement(strSQL);
            pstm.executeUpdate();
        } else if (siguiente == true) {
            if (Integer.parseInt(puntos) > res.getInt(2)) {
                strSQL = "UPDATE "+nombre+" SET puntos='"+puntos+"' WHERE jugador='"+nombreJugador+"';";
                System.out.println(strSQL);
                pstm = conexion.getConexion().prepareStatement(strSQL);
                pstm.executeUpdate();
            } else if (Integer.parseInt(puntos) < res.getInt(2)) {
            }
        } else {
        }

        /* 
         conexion.desconectar();*/
    }

}
