# TpFuncional

1 El dominio
Cachaaawww! Rocha McQueen es el auto más rápido de toda Radiador Springs y está preparándose junto a sus amigos para competir este año. Para eso nos pidieron que los ayudemos con un programa en Haskell para poder ganar.

De los participantes sabemos que son autos y que tienen un nombre, un nivel de nafta, una velocidad, el nombre de su enamorade y un truco en particular, que realizan a lo largo de la carrera.

Los trucos modifican la nafta o la velocidad del auto: 
deReversaRocha que hace que suba la nafta en un quinto de la cantidad de metros de la pista en donde está corriendo. Por el momento, supondremos que la pista tendrá 1000 metros.
impresionar duplica su velocidad para impresionar a su enamorade.
nitro aumenta su velocidad en 15 km/h instantáneamente.
fingirAmor elije a otre enamorade por conveniencia (veremos para qué sirve más adelante). 


2 Temas a evaluar
Modelado de información
Composición
Aplicación parcial
Ecuaciones por guardas
3 Entrega 1
Nota: Todas las funciones que hagan deben estar tipadas.

3.1 Punto 1: Modelado de autos y trucos

Modelar el tipo de dato auto
Modelar los trucos deReversa, impresionar, nitro y fingirAmor.
Modelar los siguientes autos:
RochaMcQueen que tiene 300 litros, su velocidad inicial es 0,  su enamorado es Ronco y su truco es deReversa.
Biankerr (nuestro tanque ruso) tiene 500 litros, su velocidad inicial es 20, su enamorado es Tinch y su truco es impresionar.
Gushtav tiene 200 litros, su velocidad inicial es 130, su enamorada es PetiLaLinda y su truco es nitro
Rodra que se olvidó de cargar nafta (tiene 0 litros), su velocidad inicial es 50, su enamorada es Taisa y su truco es fingirAmor con Petra.

3.2 Punto 2: Incrementar velocidad

La velocidad incrementa también según la cantidad de vocales de le enamorade de su auto:
Si tiene entre 1 y 2 letras aumenta 15 km/h.
Si tiene entre 3 y 4 aumenta 20 km/h.
Si tiene más de 4 aumenta 30 km/h.
3.3 Punto 3: Puede realizar truco
Agregar la posibilidad de preguntar si un auto puede realizar un truco. Esto es posible si tiene nafta en el tanque y si su velocidad es menor a 100.  

3.4 Punto 4: Nuevos trucos

Modelar los siguientes nuevos trucos:
comboLoco que es realizar deReversa con nitro.
queTrucazo primero cambia de enamorade y luego utiliza incrementar velocidad.
turbo lleva la nafta a 0 y aumenta la velocidad en la cantidad de nafta que tenía * 10. 

4 Casos de prueba


CASOS DE PRUEBA
PUNTO 3.1
Descripción
Resultado Esperado
Consultar la nafta de RochaMcQueen luego de realizar su truco. 
500
Consultar la velocidad de Biankerr luego de realizar su truco. 
40
Consultar la velocidad de Gushtav luego de realizar su truco. 
145
Consultar la enamorada de Rodra cuando elige a Petra.
Petra
PUNTO 3.2
Descripción
Resultado Esperado
Consultar la velocidad de RochaMcQueen luego de incrementar su velocidad.
15
Consultar la velocidad de Biankerr luego de incrementar su velocidad.
35
Consultar la velocidad de Gushtav luego de incrementar su velocidad.
160
Consultar la velocidad de Rodra luego de incrementar su velocidad.


70
PUNTO 3.3
Descripción
Resultado Esperado
Consultar si RochaMcQueen puede usar su truco.
Verdadero
Consultar si Gushtav puede usar su truco.
Falso (su velocidad es mayor a 100)
Consultar si Rodra puede usar su truco.
Falso (no tiene nafta)
PUNTO 3.4
Descripción
Resultado Esperado
Consultar la nafta de Rocha luego de realizar comboLoco
500
Consultar la velocidad de Rocha luego de realizar comboLoco
15
Consultar la velocidad de Rodra luego de utilizar queTrucazo cambiando su enamorada a Murcielago
80
Consultar la velocidad de Gushtav luego de utilizar turbo
2130
Consultar la nafta de Gushtav luego de utilizar turbo
0
Consultar la velocidad de Rodra luego de utilizar turbo
50
Consultar la nafta de Rodra luego de utilizar turbo
0

