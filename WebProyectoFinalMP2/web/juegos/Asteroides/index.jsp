<%-- 
    Document   : index
    Created on : 21/07/2019, 05:29:51 PM
    Author     : braya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String nombre = "Asteroides"; %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="description" content="Juego asteroids">
        <meta name="keywords" content="juego transformaciones asteroids colisiones jquery canvas ajax">
        <meta name="author" content="Alejandro Paolo Daza">
        <title>Asteroids HTML5</title>
        <link rel="stylesheet" type="text/css" href="estilos.css" media="screen">
        <script src="libs/jquery-1.11.0.min.js" language="JavaScript1.2"></script>
        <script src="script.js" language="JavaScript1.2"></script>
    </head>
    <body>
        
        <table id="banner">
            <tr>
                <td style="padding-left: 300px; padding-right: 300px;">La Universidad de los juegos</td>
                <td>
                    <form name="puntajesForm" action="../../muestraPuntajes">
                        <input type="hidden" name="nombreJuego" id="nombreJuego" value="<%=nombre%>">
                        <input type="Submit" class="BotBanner" value="Puntuaciones"></button>
                    </form>
                </td>
                <td> <button class="BotBanner" onclick="location.href = '../../index.jsp'"> Volver al inicio</button></td>
            </tr>
        </table>

        <aside>
            <img id="ship" src="imagenes/ship.png"/><br>
            <img id="asteroid" src="imagenes/asteroid.png"/><br>
            <img id="explosion" src="imagenes/explosion.png"/><br>
            <h1>Elude Asteroids</h1>
            <hr>
            <h3>Controles del juego</h3>
            <img id="contrles" src="imagenes/wasd.png"/>
            <img id="contrles" src="imagenes/arrows.png"/>
            <br>
            <div id="recomendaciones"></div>
            <button>iniciar</button>
            <hr>
            <p>Copyright @2014 Alejandro Paolo Daza</p>
        </aside>
        <section>

            <canvas id="lienzo" width="700" height="500">
                Tu navegador no es compatible
            </canvas>

            <audio id="brisa">
                <source src="sonidos/brisa.ogg" type="audio/ogg">
                <source src="sonidos/brisa.mp3" type="audio/mpeg">
                Tu navegador no es compatible
            </audio>
            <audio id="explode">
                <source src="sonidos/explode.ogg" type="audio/ogg">
                <source src="sonidos/explode.mp3" type="audio/mpeg">
                Tu navegador no es compatible
            </audio> 
            <form action="../../recibeDatos" name="datosPartida">
                <input type="hidden" value="<%=nombre%>" id="nombreJuego" name="nombreJuego">
                <input type="hidden" value="" id="nombreJugador" name="nombreJugador">
                <input type="hidden" value="" name="puntos" id="puntos">
            </form>
        </section>
    </body>
</html>

