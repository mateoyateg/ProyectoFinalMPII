<%-- 
    Document   : index
    Created on : 20/07/2019, 05:55:04 PM
    Author     : mateo
--%>

<%@page import="java.util.LinkedList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style/main.css" rel ="stylesheet" type ="text/css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La Universidad de los Juegos</title>  
    </head>


    <body>

        <h1 class="titulo">La universidad de los juegos ┌( ಠ_ಠ )┘</h1>

        <table>
            <tr>
                <td> <button class="botonAsteroides" onclick=" location.href = 'juegos/Asteroides/index.jsp'" id="escenario_1">Asteroides</button> </td>
                <td> <button class="botonLaLlorona" onclick=" location.href = 'juegos/LaLlorona/index.html'" id="escenario_1">La Llorona</button> </td>
                <td> <button class="botonBomberman" onclick=" location.href = 'juegos/Bomberman2.0/index.html'" id="escenario_1">Bomberman 2.0</button> </td>
                <td> <button class="boton2048" onclick=" location.href = 'juegos/2048/index.html'" id="escenario_1">2048</button> </td>    
            </tr>
        </table>

        <h2>Universidad Distrital Francisco José de Caldas - Facultad de Ingeniería</h2>
        <h2>Modelos de Programación II - Profesor: Alejandro Daza</h2>
        <h3>Creado por: Brayan A. Paredes Sanchez, Juan M. Ostos Quiñones, Mateo Yate Gonzalez</h3>
    </body>
</html>
