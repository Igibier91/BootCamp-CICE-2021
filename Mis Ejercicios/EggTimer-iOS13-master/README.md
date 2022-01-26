
# QAMTARA: Un RPG para mis compañeros de CICE

## Objetivo

Qamtara es una historia interactiva desarrollada por Ignacio Gilabert como trabajo de Fin de Máster del curso de Desarrollo de Aplicaciones Móviles de la escuela CICE.

Se ha optado por realizar el trabajo en UIKit.

La aplicación consta de 5 vistas principales:

* StartScreen: Pantalla por la que arranca la aplicación. Contiene dos botones, si pulsas en "Tutorial" aparecerá un Pop-Up con una breve explicación. Si se pulsa el botón de "Play" empezarás el juego, navegando a la siguiente vista.

* Intro: Se explica la introducción del juego, y habrá un recuadro donde puedes escribir el nombre de tu personaje. Al pulsar al botón de "Ok", navegarás a la siguiente vista.

* Trial: Se explica como va a desarrollarse el juego y aparecerá tu nombre de héroe traido de la vista anterior. Tendrás que hacer scroll para leer la explicación. Si pulsas "Si" navegarás a la siguiente vista.

* Combat: Tienes un botón para tirar simultáneamente dos dados cada personaje (El tuyo y el del enemigo), tu resultado total será comparado al total del enemigo, si tu tirada es mayor que la del enemigo, le quitarás un porcentaje de vida en función a la diferencia de vuestras tiradas. Si su tirada es mayor, tú serás el que pierda vida. El primero que deje la barra de vida de su oponente a 0, será declarado vencedor. 
    Si el enemigo te derrota, aparecerá un Pop-Up para poder repetir el juego desde el principio.
    Si derrotas al enemigo, podrás navegar a la siguiente vista.

* End: Conclusión de la historia. El juego termina aquí y la aplicación puede ser cerrada.


## ¿Qué he puesto en práctica?

* UIKit
* AlertViews
* ProgressViews
* Reproducción de Sonidos
* Outlets
* Condicionales - IF/ELSE
* Funciones
* Navegación entre vistas
* Diseño gráfico
* Entre otras muchas cosas...


> Muchas gracias a Andrés Ocampo nuestro genial profesor de iOS por toda la paciencia que ha tenido con nosotros. Espero que lo disfrutes.

