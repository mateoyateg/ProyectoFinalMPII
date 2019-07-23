var QQSM = QQSM || {};

QQSM.Game = function () {

    
    //arreglo de preguntas [pregunta, respuestas, respuesta correcta, valor]

    preguntas = [
        ['¿Cuál es el lugar más frío de la tierra?', ['Antartida', 'Polo Norte', 'Polo Sur', 'Canada'], 'Antartida', 0],
        ['¿Quién escribió La Odisea?', ['Francisco de Quevedo', 'Lope de Vega', 'Homero', 'Miguel de Cervantes'], 'Homero', 100],
        ['¿Cuál es el río más largo del mundo?', ['Nilo', 'Amazonas', 'Rio de Mississippi', 'Yangzi '], 'Nilo', 200],
        ['¿Dónde originaron los juegos olímpicos?', ['Roma', 'Grecia', 'Imperio Austrohúngaro', 'Mesopotamia '], 'Grecia', 300],
        ['¿Quién ganó el mundial de 1954?', ['Alemania', 'Brasil', 'Argentina', 'Uruguay'], 'Brasil', 500],
        ['¿A qué país pertenece la ciudad de Varsovia?', ['Dinamarca', 'Holanda', 'Republica Checa', 'Polonia'], 'Polonia', 1000],
        ['¿Dónde se encuentra la Sagrada Familia?', ['Madrid', 'Paris', 'Chicago', 'Barcelona'], 'Barcelona', 2000],
        ['Los humanos son ...', ['Omnívoros', 'Herbívoros', 'Carnívoros', 'Ninguno'], 'Omnívoros', 4000],
        ['¿Cuál es el océano más grande?', ['Atlántico ', 'Pacífico', 'Índico', 'Glacial Antártico'], 'Pacífico', 8000],
        ['Si 50 es el 100%, ¿cuánto es el 90%?', ['Cuarenta y cinco', 'Cuarenta', 'Cuarenta y nueve', 'Cincuenta'], 'Cuarenta y cinco', 16000],
        ['¿Cuál es tercer planeta en el sistema solar?', ['Mercurio', 'Venus', 'Marte', 'Tierra'], 'Tierra', 32000],
        ['¿Qué país tiene forma de bota?', ['Francia', 'Nigeria', 'Mexico', 'Italia'], 'Italia', 64000],
        ['¿En qué lugar del cuerpo se produce la insulina?', ['Pancreas', 'Higado', 'Pulmones', 'Riñones'], 'Pancreas', 125000],
        ['¿Quién va a la cárcel?', ['El imputado', 'El acusado', 'El condenado', 'Ninguno'], 'El condenado', 150000],
        ['¿Cómo se llama la estación espacial rusa?', ['ISS', 'Tiangong-1', 'Saliut', 'Mir'], 'Mir', 100000]
    ];

    var respuestaCorrecta;
    var espacioPregunta = $('.pregunta');
    var numPregunta = $('.numPregunta');
    var respuestas = $('.respuestas');
    var reiniciar = $('.reiniciar');
    var dinero = $('.dinero');
    var cincuenta = $('.cincuenta');
    var paseLibre = $('.paseLibre');
    var lineaDeVida = $('.lineaDeVida');
    var publico = $('.publico');
    var ePublico = $('.ePublico');



    // contador de preguntas
    var numPreg = -1;

    //funciones que necesitamos llamar al inicio
    function init()
    {
        
        //siguientePregunta();
        reiniciar.click(reInicio);
        paseLibre.click(function () {
            paseLibre.hide();
            siguientePregunta();
            

        });


    }

    function siguientePregunta() {
        ePublico.hide();
        numPreg = numPreg + 1;
        console.log("numero de la pregunta " + numPreg)
        var total = preguntas.length;

        if (numPreg < total) {
            preguntar(numPreg);
        } else {
            dinero.html("Dinero : 1MM");
            espacioPregunta.html("Eres Millonario!! ");
            respuestas.hide();
            reiniciar.show();
            numPregunta.hide();
            lineaDeVida.hide();
            ePublico.hide();
        }
    }


    function preguntar(numero) {

        espacioPregunta.html(preguntas[numero][0]);

        numPregunta.html('Pregunta numero: # ' + (numero + 1));

        //Limpiar la caja de respuestas

        $('.respuestas').empty();

        //Eliminar los espacios de las respuestas
        respuestas.append('<li data-respuesta=' + preguntas[numero][1][0].replace(/ /g, '') + '>' + preguntas[numero][1][0] + '</li>');
        respuestas.append('<li data-respuesta=' + preguntas[numero][1][1].replace(/ /g, '') + '>' + preguntas[numero][1][1] + '</li>');
        respuestas.append('<li data-respuesta=' + preguntas[numero][1][2].replace(/ /g, '') + '>' + preguntas[numero][1][2] + '</li>');
        respuestas.append('<li data-respuesta=' + preguntas[numero][1][3].replace(/ /g, '') + '>' + preguntas[numero][1][3] + '</li>');

        dinero.html("Dinero Acumulado : $$" + preguntas[numero][3]);

        respuestaCorrecta = preguntas[numero][2];

        console.log("La respuesta es " + respuestaCorrecta);

        // quitar espacios y hacerla minusculas
        respuestaCorrecta = respuestaCorrecta.replace(/ /g, '').toLowerCase();

        //Cuando el usuario haga click llamamos la funncion responder

        $('.respuestas li').on('click', responder);

        // 50-50
        cincuenta.click(function () {

            // Esconder el boton
            cincuenta.hide();

            contador = 0;

            //debemos evitar quitar una respuesta correcta
            $(".respuestas li").each(function () {

                if (contador < 2) {
                    //validar que no sea una respuesta correcta 
                    if ($(this).data('respuesta').replace(/ /g, '').toLowerCase() != respuestaCorrecta) {
                        $(this).hide();
                        contador = contador + 1;
                    }

                }

            });

        });

        // publico 

        publico.click(function () {
            ePublico.show();
            var aux = 0;
            var contador = 0;
            publico.hide();
            $(".respuestas li").each(function () {
                if (contador < 4) {
                    //encontrar la respuesta correcta 
                    if ($(this).data('respuesta').replace(/ /g, '').toLowerCase() != respuestaCorrecta) {
                        contador = contador + 1;

                    } else {
                        aux = contador;
                        contador++;
                    }
                }
            });

            //casos de respuesta del publico 

            if (aux == 0) {
                var preguntasGrafica = {
                    "A": 70,
                    "B": 10,
                    "C": 10,
                    "D": 10
                };
            } else if (aux == 1) {
                var preguntasGrafica = {
                    "A": 10,
                    "B": 70,
                    "C": 10,
                    "D": 10
                };
            } else if (aux == 2) {
                var preguntasGrafica = {
                    "A": 10,
                    "B": 10,
                    "C": 70,
                    "D": 10
                };
            } else if (aux == 3) {
                var preguntasGrafica = {
                    "A": 10,
                    "B": 10,
                    "C": 10,
                    "D": 70
                };
            }
            var myBarchart = new Barchart(
                    {
                        canvas: myCanvas,
                        seriesName: "El publico dice...",
                        padding: 20,
                        gridScale: 5,
                        gridColor: "#eeeeee",
                        data: preguntasGrafica,
                        colors: ["#a55ca5", "#67b6c7", "#bccd7a", "#eb9743"]
                    }
            );
            myBarchart.draw();


        });
    }

    // Funcion para determinar si la respuesta es correcta
    var puntaje = 0;
    function responder() {

        $('.respuestas li').off();


        var respuestaUsuario = $(this).data('respuesta').replace(/ /g, '').toLowerCase();

        if (respuestaUsuario == respuestaCorrecta) {

            siguientePregunta();
            ePublico.hide();
            puntaje++;

        } else {

            espacioPregunta.html("Respuesta incorrecta! Tu saldo final es: " + preguntas[puntaje][3]);
            document.getElementById("puntos").value = preguntas[puntaje][3];
            dinero.html("Dinero Acumulado : $" + preguntas[puntaje][3]);
            respuestas.hide();
            reiniciar.show();
            numPregunta.hide();
            lineaDeVida.hide();
            ePublico.hide();
            puntaje = 0;
            
            document.datosPartida.submit();
        }

    }

    // Funcion para reiniciar el juego 
    function reInicio() {
        var nombreJugador = prompt("Ingrese su nombre de jugador: ");
        document.getElementById("nombreJugador").value = nombreJugador;
        numPreg = -1;
        siguientePregunta();
        respuestas.show();
        reiniciar.hide();
        numPregunta.show();
        lineaDeVida.show();
        cincuenta.show();
        paseLibre.show();
        publico.show();

    }

    init();
};


$(function ()
{
    new QQSM.Game();

});



var myCanvas = document.getElementById("myCanvas");
myCanvas.width = 300;
myCanvas.height = 250;

var ctx = myCanvas.getContext("2d");

function drawLine(ctx, startX, startY, endX, endY, color) {
    ctx.save();
    ctx.strokeStyle = color;
    ctx.beginPath();
    ctx.moveTo(startX, startY);
    ctx.lineTo(endX, endY);
    ctx.stroke();
    ctx.restore();
}

function drawBar(ctx, upperLeftCornerX, upperLeftCornerY, width, height, color) {
    ctx.save();
    ctx.fillStyle = color;
    ctx.fillRect(upperLeftCornerX, upperLeftCornerY, width, height);
    ctx.restore();
}

var Barchart = function (options) {
    ctx.clearRect(0, 0, 250, 300);
    this.options = options;
    this.canvas = options.canvas;
    this.ctx = this.canvas.getContext("2d");
    this.colors = options.colors;

    this.draw = function () {
        var maxValue = 0;
        for (var categ in this.options.data) {
            maxValue = Math.max(maxValue, this.options.data[categ]);
        }
        var canvasActualHeight = this.canvas.height - this.options.padding * 2;
        var canvasActualWidth = this.canvas.width - this.options.padding * 2;

        //drawing the grid lines
        var gridValue = 0;
        while (gridValue <= maxValue) {
            var gridY = canvasActualHeight * (1 - gridValue / maxValue) + this.options.padding;
            drawLine(
                    this.ctx,
                    0,
                    gridY,
                    this.canvas.width,
                    gridY,
                    this.options.gridColor
                    );


            this.ctx.save();
            this.ctx.fillStyle = this.options.gridColor;
            this.ctx.textBaseline = "bottom";
            this.ctx.font = "bold 10px Arial";
            this.ctx.fillText(gridValue, 10, gridY - 2);
            this.ctx.restore();

            gridValue += this.options.gridScale;
        }


        var barIndex = 0;
        var numberOfBars = Object.keys(this.options.data).length;
        var barSize = (canvasActualWidth) / numberOfBars;

        for (categ in this.options.data) {
            var val = this.options.data[categ];
            var barHeight = Math.round(canvasActualHeight * val / maxValue);
            drawBar(
                    this.ctx,
                    this.options.padding + barIndex * barSize,
                    this.canvas.height - barHeight - this.options.padding,
                    barSize,
                    barHeight,
                    this.colors[barIndex % this.colors.length]
                    );

            barIndex++;
        }


        this.ctx.save();
        this.ctx.textBaseline = "bottom";
        this.ctx.textAlign = "center";
        this.ctx.fillStyle = "#000000";
        this.ctx.font = "bold 14px Arial";
        this.ctx.fillText(this.options.seriesName, this.canvas.width / 2, this.canvas.height);
        this.ctx.restore();


        barIndex = 0;
        var legend = document.querySelector("legend[for='myCanvas']");
        var ul = document.createElement("ul");
        //legend.append(ul);
        for (categ in this.options.data) {
            var li = document.createElement("li");
            li.style.listStyle = "none";
            li.style.borderLeft = "20px solid " + this.colors[barIndex % this.colors.length];
            li.style.padding = "5px";
            li.textContent = categ;
            ul.append(li);
            barIndex++;
        }
    }
}




