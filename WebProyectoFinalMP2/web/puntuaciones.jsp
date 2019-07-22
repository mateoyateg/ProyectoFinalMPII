<%-- 
    Document   : puntuaciones
    Created on : 21/07/2019, 04:57:37 PM
    Author     : braya
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modelo.Jugador"%>
<%@page import="DAO.BDTodaslasPuntuaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Cookie[] cookies = request.getCookies(); %>
<% String nombreJuego = cookies[0].getValue(); %>
<% BDTodaslasPuntuaciones puntajes;%>
<% puntajes = new BDTodaslasPuntuaciones(nombreJuego);
   ArrayList<Jugador> listadoJugadores = puntajes.creaObjetos();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Nombre</th>
                <th>Puntos</th>
            </tr>
                    <%for(int i=0; i<listadoJugadores.size(); i++){%>
                <td><%= listadoJugadores.get(i).getNombre()%></td>
                <td><%= listadoJugadores.get(i).getPuntos()%></td>
            </tr>
                    <%}%>  
        </table>          
    </body>
</html>
