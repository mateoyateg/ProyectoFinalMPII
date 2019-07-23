/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import DAO.BDModificaPuntuaciones;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author braya
 */
@WebServlet(name = "recibeDatos", urlPatterns = {"/recibeDatos"})
public class recibeDatos extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        BDModificaPuntuaciones modificar;
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String nombreJuego = request.getParameter("nombreJuego");
            String nombreJugador = request.getParameter("nombreJugador");
            String puntos = request.getParameter("puntos");
            
            //Modificar los puntos del usuario
            
            if(nombreJugador!="" && puntos!=""){
                modificar = new BDModificaPuntuaciones(nombreJuego);
                modificar.insertaDatos(nombreJugador, puntos);
            }
            
            Cookie cokNombreJuego = new Cookie("nombreJuego", nombreJuego);
            cokNombreJuego.setPath("puntuaciones.jsp");
            cokNombreJuego.setMaxAge(2);
            response.addCookie(cokNombreJuego);
            response.sendRedirect("puntuaciones.jsp");
            System.out.println("ME VOY1");
            
        } catch (Exception e){
            
            System.out.println("ERROR: "+e);
            
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
