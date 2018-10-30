INCLUDE MACROSPALIN.LIB
;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE DATOS
;------------------------------------------------------------------------------
DATOS SEGMENT
    
    ;Portada Inicial
    
    Instrucciones dw '  ',0ah,0dh
dw ' ',0ah,0dh
dw ' ',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '          ||                                                  ||',0ah,0dh                                        
dw '          ||        Instituto Tecnologico de Costa Rica       ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Ingenieria En Computacion                 ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Proyecto Ensamblador 8086                 ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh          
dw '          ||        Alyson Retana Gamboa                      ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Randald Villegas Brenes                   ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        Sede San Carlos                           ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        2018                                      ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Presione una tecla para empezar           ||',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '$',0ah,0dh           
        
         
         ;Pantalla para Cantidad de jugadores
    
    CantidadJugadores dw '  ',0ah,0dh
dw ' ',0ah,0dh
dw ' ',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '          ||                                                  ||',0ah,0dh                                        
dw '          ||        Bienvenido                                ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Al Juego de los Puntos                    ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Por Favor                                 ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh          
dw '          ||        Seleccione la cantidad                    ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        De Jugadores para la Partida              ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        Presione las teclas numericas             ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        2, 3 o 4 para seleccionar los Jugadores   ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '$',0ah,0dh           
        
             ;Pantalla para cuando se rinde el jugador 2   
Victoria1 dw '  ',0ah,0dh
dw ' ',0ah,0dh
dw ' ',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '          ||               GANADOR!!!                         ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh  
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||              El jugador 2 se ha rendido!         ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh                                        
dw '          ||              Juego Finalizado!!                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '$',0ah,0dh        
                  
              ;Pantalla para cuando se rinde el jugador 1    
Victoria2 dw '  ',0ah,0dh
dw ' ',0ah,0dh
dw ' ',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '          ||               GANADOR!!!                         ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh  
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||              El jugador 1 se ha rendido!         ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh                                        
dw '          ||              Juego Finalizado!!                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '$',0ah,0dh                 
         
;**********************************************************************************  
        opciones1 db "================================================================================","$"
        opciones2 db "                    ++++++++++INSTRUCCIONES DE JUEGO++++++++++                  ","$"
       
        ;Variable aux para conteo de jugadores
        numeroJugadores db 1 dup(?),"$"
        
        ;variable aux para el nivel
        nivel db 1 dup(?),"$"
         
        ;Espacio y alimentacion de linea
        espacio db 10,13,'$' 
        
        ;Mensaje que solicita una entrada
        pregunta1 db 13,10,'Digite un caracter para el jugador 1: ','$'
        pregunta2 db 13,10,'Digite un caracter para el jugador 2: ','$'
        pregunta3 db 13,10,'Digite un caracter para el jugador 3: ','$'
        pregunta4 db 13,10,'Digite un caracter para el jugador 4: ','$'
        preguntaNivel db 13,10,'Selecione ("1" o "2" o "3") para el nivel de dificultad ','$'
        
        ;CARACTER
        ;Jugador 1 
        player1 db 1 dup(?),"$"
        ;Jugador 2
        player2 db 1 dup(?),"$"
        ;Jugador 3
        player3 db 1 dup(?),"$"
        ;Jugador 4
        player4 db 1 dup(?),"$"                  
        
        ;PUNTOS
        ;Jugador 1 
        puntos1 db 48,"$"
        ;Jugador 2
        puntos2 db 48,"$"
        ;Jugador 3
        puntos3 db 48,"$"
        ;Jugador 4
        puntos4 db 48,"$"
        
        ;aux para rol del juego
        jugadorActual db 49h ,"$"     
         
        ;aux para posiciones de pantalla  mxn
        fila db 48,"$"
        columna db 48,"$" 
         
        ;variables para impresion en pantalla                 
        Matriz1 db '* * * * *',"$"
        Matriz2 db '* * * * * * * * * *',"$"
        Matriz3 db '* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *',"$"
                          
        ;Variable aux para servicios
        servicio db ,"$"  
        
        ;Variables de Posiciones en pantalla
        posX db  ,"$"
        posY db   ,"$"
        
        ;Variable para dividir entre pixeles de pantalla 
        divisor db 8 ,"$"
        
        ;Variables Para imprimir en pantalla menu    
        Saludo db "*BIENVENIDO*" ,"$" 
        D1 db "*RENDIRSE:: (R)" ,"$" 
        S1 db "*(S)" ,"$"
        jugador db "JUGADOR : ","$"
        RESET db "*RESET: (C)" ,"$"
        Quit db "*QUIT: (Q)" ,"$"
        Color db "*PUNTOS: ","$"
        Punto db "*","$"
        
        ;Auxiliares de posiciones
        primerMovimiento db 00h
        
        PX db ,"$"
        PY db ,"$"
        
        Col db 0000
        Car db ,"$"
        
        auxX db ,"$"
        auxY db ,"$"
        
        PosicionAnteriorX db ,"$"
        PosicionAnteriorY db ,"$"
        
       
        
        ;signos para imprecion
        SinSigno db " ","$"
        Signo db "","$" 
        
        
        ;Variables de msjs del programa
        recargando db "Reiniciando el Juego...!","$"        
        msjBye db "Gracias por utilizar el programa ","$"
        
DATOS ENDS

;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE PILA
;------------------------------------------------------------------------------

PILA SEGMENT STACK "STACK"
      db 100h dup(?)
PILA ENDS


;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE CODIGO
;------------------------------------------------------------------------------

CODE SEGMENT
        assume CS:code, DS:datos, SS:pila

;______________________________________________________________________________
START: ;Se preparan los datos del programa
  
    mov  ax,datos         ;Preparamos el programa
    mov  ds,ax
    jmp  continuar        ;Saltamos a la etiqueta CONTINUAR

;______________________________________________________________________________

CONTINUAR: ;Se imprime la portada del proyecto
    limpiar servicio      ;Limpia la pantalla
    colores 1111B         ;Color Blanco 
    imprime Instrucciones ;Imprime Instrucciones 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    int 21h               ;lectura de caracteres                                          
    
    jmp seleccionJugadores;Nos movemos de pantalla  
 
;______________________________________________________________________________     
SELECCIONJUGADORES: ;se solicita la cantidad de jugadores
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime CantidadJugadores;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Salidas o entradas Teclado
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov numeroJugadores[si], bl
   
;______________________________________________________________________________
VERIFICARJUGADORES: ;se compara las entradas del usuario
    
        
    cmp numeroJugadores,32h ;Comparamos con 2 
    je  DosJugadores        ;si es igual nos movemos al rol del juego
    
    cmp numeroJugadores,33h ;Comparamos con 3
    je  TresJugadores       ;si es igual nos movemos al rol del juego
    
    cmp numeroJugadores,34h ;Comparamos con 4    
    je  CuatroJugadores     ;si es igual nos movemos al rol del juego
    
    call sonido             ;se llama el proceso que produce un sonido
    jmp seleccionJugadores  ;Tecla erronea llamamos la funcion 
    ret

;______________________________________________________________________________
DOSJUGADORES: ;Seleccion de caracteres del rol de 2 jugadores
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1     ;Imprime la pregunta que solicita el caracter
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2     ;Imprime la pregunta que solicita el caracter
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
    
    jmp cicloJuego2       ;Vamos al ciclo del juego
;______________________________________________________________________________
TRESJUGADORES:  ;Seleccion de caracteres del rol de 3 jugadores
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 0100B         ;Color rojo
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 3
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
                                              
    jmp cicloJuego3

;______________________________________________________________________________
CUATROJUGADORES: ;Seleccion de caracteres del rol de 4 jugadores
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 0100B         ;Color rojo 
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 3
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
    
    ;Jugador #4
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1001B         ;Color azul 
    imprime pregunta4      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 4
    mov player4[si], bl
    imprime espacio       ;Espacio Vacio       
    
    jmp cicloJuego4
;______________________________________________________________________________
CICLOJUEGO2: ;Ciclo Para iniciar el juego de 2 jugadores
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call VERIFICARNIVEL2  ;Proceso que verifica el nivel ingresado y si es una entrada correcta
    jmp MODOVIDEO2        ;Saltamos de etiqueta
    
;______________________________________________________________________________
MODOVIDEO2: ;Inicio del modo de video 

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 0111b         ;Color gris
    
    call Menu2            ;Imprime el menu
    jmp compararNivel     ;Saltamos de etiqueta
    
;______________________________________________________________________________
CompararNivel: ;Se compara los datos ingresados para selecionar el tama_o de la matriz  
    
    cmp nivel,31h         ;Comparamos con 1
    je  MATRIZ5           ;Saltamos de etiqueta
    
    cmp nivel, 32h        ;Comparamos con 2
    je MATRIZ10           ;Saltamos de etiqueta
    
    cmp nivel, 33h        ;Comparamos con 3
    je MATRIZ40           ;Saltamos de etiqueta
        
;______________________________________________________________________________
MATRIZ5: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 5x5
    
    call matriz5x5        ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ10: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 10x10
    
    call matriz10x10      ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ40: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 10x40
    
    call matriz10x40      ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
                        
;______________________________________________________________________________

GAME2: ;Inicio de la logica del juego            
;##################################################################################    
;              Comparacion de click del mouse en el juego      
;##################################################################################     
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je VerificarRestricciones ;Vamos a verificar las restricciones
    
    cmp bx,2             ;Cpm click Derecho
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Teclas en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,52h            ;Compara con R
    je rendirse           ;Si es igual salta

    cmp al,72h            ;Compara con r
    je rendirse           ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
   jmp game2     
;______________________________________________________________________________ 
                                                                       
CICLOJUEGO3: ;Inicio del ciclo para partidas de 3 jugadores  

    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call verificarNivel3  ;proceso para verificar el nivel
    jmp MODOVIDEO3        ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO3: ;Se inicia el modo de video

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris    
    
    call Menu             ;Imprime el menu
    
;______________________________________________________________________________
CompararNivel3:  ;Se compara los datos ingresados para selecionar el tama_o de la matriz    
    
    cmp nivel,31h         ;Comparamos con 1
    je  MATRIZ53
    
    cmp nivel, 32h        ;Comparamos con 2
    je MATRIZ103
    
    cmp nivel, 33h        ;Comparamos con 3
    je MATRIZ403
        
;______________________________________________________________________________
MATRIZ53: ;Se llama el proceso que imprime la matriz de 5 x 5
    call matriz5x5

    jmp game3              ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ103:  ;Se llama el proceso que imprime la matriz de 10 x 10
    call matriz10x10

    jmp game3              ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ403:;Se llama el proceso que imprime la matriz de 10 x 40
    call matriz10x40

    jmp game3              ;Saltamos de etiqueta    
                           
    
;______________________________________________________________________________

GAME3: ;Inicio de logica del juego          
;##################################################################################    
;              Comparacion de clicks en el juego      
;##################################################################################        
 
 
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je verificarPosicion  ;Si es igual Saltamos de etiqueta    
    
    cmp bx,2
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
   jmp game3     
             
;______________________________________________________________________________

CICLOJUEGO4:;Inicio del rol del juego para 4 jugadores
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al              ;Se mueve el valor recibido del teclado
    mov si,0               ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call VERIFICARNIVEL4   ;Proceso para verificar el nivel
    jmp MODOVIDEO4         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO4:;Se inicia el modo de video

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris  
    
    
    call Menu             ;Imprime el menu
    
;______________________________________________________________________________
CompararNivel4: ;Se compara las entradas del usuario   
    
    cmp nivel,31h         ;Se compara el nivel con 1
    je  MATRIZ54          ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 32h        ;Se compara el nivel con 2
    je MATRIZ104          ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 33h        ;Se compara el nivel con 3
    je MATRIZ404          ;si es igual nos vamos a la etiqueta
        
;______________________________________________________________________________
MATRIZ54:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz5x5         ;Se llama el proceso para matriz en nivel 1

    jmp game4              ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ104:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz10x10       ;Se llama el proceso para matriz en nivel 2

    jmp game4              ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ404:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz10x40       ;Se llama el proceso para matriz en nivel 3

    jmp game4              ;Saltamos de etiqueta    
                        
    
;______________________________________________________________________________

GAME4:;Inicio de la logica del juego para 4 jugadores
;##################################################################################    
;              Comparacion de Clicks en el juego      
;##################################################################################           
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je verificarPosicion  ;Si es igual Saltamos de etiqueta    
    
    cmp bx,2
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,52h            ;Compara con R
    je rendirse           ;Si es igual salta

    cmp al,72h            ;Compara con r
    je rendirse           ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
    jmp game4             ;Enciclamos el juego
                
                
;______________________________________________________________________________
INFORENDIDO1: ;Informacin cuando un jugador se rinde

    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria2     ;Imprime Pantalla para cantidad de jugadores 
    
    gotoxy 10h,0ah
    imprime jugador       ;jugador 
    
    gotoxy 19h,0ah
    imprime player2       ;caracter
    
    gotoxy 2eh,0ah
    imprime color         ;puntos                       
                            
    gotoxy 38h,0ah
    imprime puntos2       ;puntos obtenidos 
    
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    jmp resetapp          ;Reiniciamos el juego

;______________________________________________________________________________
INFORENDIDO2: ;Informacin cuando un jugador se rinde
    
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria1     ;Imprime Pantalla para cantidad de jugadores 
    
    gotoxy 10h,0ah
    imprime jugador       ;jugador 
    
    gotoxy 19h,0ah
    imprime player1       ;caracter
    
    gotoxy 2eh,0ah
    imprime color         ;puntos                       
                            
    gotoxy 38h,0ah
    imprime puntos1       ;puntos obtenidos    
     
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz      
     
    
    jmp resetapp          ;Reiniciamos el juego
;______________________________________________________________________________
RENDIRSE: ;Se verifica cual jugador se rindio

    cmp jugadorActual, 49h;Jugador 1
    je infoRendido1       ;Se imprime las estadisticas

    cmp jugadorActual, 50h;Jugador 1 
    je infoRendido2       ;Se imprime las estadisticas     
    
     
    ret
;______________________________________________________________________________
RESETAPP:                 ;Reinicia el juego         
    
    limpiar servicio      ;Limpia la pantalla  
    colores 14            ;Color amarillo
    call obtenerposicion
    gotoxy 0ah,0ah        ;Busca la posicion
    imprime recargando    ;Imprime la variable (cargando...)
    
    mov ax,0000           ;Limpia el servicio y la pantalla
    mov bx,0000
    mov cx,0000
    mov dx,0000  
    
                          ;Limpiamos los puntos de los jugadores
    mov puntos1, 48
    mov puntos2, 48
    mov puntos3, 48
    mov puntos4, 48
     
    mov jugadorActual, 49h; establecemos el primer jugador
    mov nivel,00h         ;Le colocamos un cero a la variable del nivel                      
                          
    colores 7             ;Color gris
    jmp start             ;Saltamos a la etiqueta

;______________________________________________________________________________

INFO1:;informacion del usuario 1 para cuando esta en el rol                           
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player1       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime puntos1       ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________

INFO2:;informacion del usuario 2 para cuando esta en el rol                        
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player2       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime puntos2       ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________

INFO3:;informacion del usuario 3 para cuando esta en el rol                           
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player3       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime puntos3       ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________
                            
INFO4:;informacion del usuario 4 para cuando esta en el rol                            
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player4       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime puntos4       ;puntos obtenidos                        
                            

    ret                        
;______________________________________________________________________________




;______________________________________________________________________________


;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                            
;______________________________________________________________________________                           
; Area de Procesos Repetitivos para llamar como funciones
;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
;______________________________________________________________________________

;______________________________________________________________________________                           
VERIFICARNIVEL2 PROC near: ;Proceso para verificar el nivel de una partida de 2
    
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO2         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO2         ;Nos regresamos a solicitar el nivel
    ret
    
endp
;______________________________________________________________________________                           
VERIFICARNIVEL3 PROC near: ;Proceso para verificar el nivel de una partida de 3
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO3         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO3         ;Nos regresamos a solicitar el nivel
    ret
endp

;______________________________________________________________________________                           
VERIFICARNIVEL4 PROC near: ;Proceso para verificar el nivel de una partida de 4
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO4         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO4         ;Nos regresamos a solicitar el nivel
    ret
endp
;______________________________________________________________________________                           
MATRIZ10X40 proc near: ;Proceso para imprimir matrix de 10 x 40
   
   mov columna,0h          ; Iniciamos el valor de las filas en 0
   mov fila,0h             ; Iniciamos el valor de las columnas en 0
   
   mov cx,0ah              ;establecemos 10 iteraciones
   ciclo3:                 ;Etiqueta para ciclo
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz3     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       inc fila
                           ;hacemos las iteraciones para las filas
       loop ciclo3
                           ;si es igual finalizamos el proceso
       ret                 ;si no es igual brincamos al ciclo
endp 
;______________________________________________________________________________                           
MATRIZ10X10 proc near: ;Proceso para imprimir matrix de 10 x 10
   
   mov columna,1eh         ;Iniciamos el valor de las filas en 30
   mov fila,0h             ;Iniciamos el valor de las columnas en 0
   
   mov cx,0ah              ;establecemos 10 iteraciones
   ciclo2:                 ;Etiqueta para ciclo
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz2     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       inc fila
                           ;hacemos las iteraciones para las filas
       loop ciclo2
       ret                 ;si es igual finalizamos el proceso
endp
;______________________________________________________________________________                           
MATRIZ5X5 proc near: ;Proceso para imprimir matrix de 5 x 5
   
   mov columna,23h         ;Iniciamos el valor de las filas en 35
   mov fila,5h             ;Iniciamos el valor de las columnas en 5
   
   mov cx,5h               ;establecemos 5 iteraciones
   ciclo1:
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz1     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       inc fila
                            
       loop ciclo1         ;hacemos las iteraciones para las filas
       ret                 ;si es igual finalizamos el proceso
endp
;______________________________________________________________________________                           

SONIDO proc near:;Crea un sonido si la tecla es diferente a las que dice el menu
       
       mov ah,02h          ;servicio de teclado sin eco
       ;gotoxy 00h,00h     ;colocamos el cursor en la esquina superior izquierda
       mov dl,07h          ;Crea el sonido
       int 21h             ;INT teclado

endp               ;Cierre de proceso
    ;______________________________________________________________________________
 MENU proc near:;Proceso que imprime el menu y las instrucciones
    
    gotoxy 00h,14h
    imprime opciones1     ;Imprime linea
    
    
    gotoxy 05h,15h        ;Menu
    imprime saludo        ;Mensaje del menu
    
    gotoxy 23h,15h
    imprime Reset         ;Reset
    
    gotoxy 3Bh,15h
    imprime Quit          ;Quit
    
    
    gotoxy 00h,16h
    imprime opciones1     ;Imprime linea
    
     
    ;Se compara el jugador que esta en el turno
    cmp jugadorActual, 49h;Con el 1
    je info1              ;Se imprime la info

    cmp jugadorActual, 50h;Con el 2 
    je info2              ;Se imprime la info

    cmp jugadorActual, 51h;Con el 3 
    je info3              ;Se imprime la info

    cmp jugadorActual, 52h;Con el 4 
    je info4              ;Se imprime la info
    
    ret              
endp 

;______________________________________________________________________________

MENU2 proc near:;Proceso que imprime el menu para 2 jugadores para la opcion de rendirse

    gotoxy 00h,14h
    imprime opciones1     ;Imprime linea
    
    
    gotoxy 05h,15h        ;Menu
    imprime D1            ;Tecla para rendirse
    
    gotoxy 23h,15h
    imprime Reset         ;Reset
    
    gotoxy 3Bh,15h
    imprime Quit          ;Quit
    
    
    gotoxy 00h,16h
    imprime opciones1     ;Imprime linea
    
     
    ;Se compara el jugador que esta en el turno
    cmp jugadorActual, 49h;Con el 1 
    je info1              ;Se imprime la info

    cmp jugadorActual, 50h;Con el 2 
    je info2              ;Se imprime la info

    cmp jugadorActual, 51h;Con el 3 
    je info3              ;Se imprime la info

    cmp jugadorActual, 52h;Con el 4 
    je info4              ;Se imprime la info
    
    ret              
endp 


;______________________________________________________________________________                           

OBTENERPOSICION proc near:;Proceso para guardar en variables las posiciones del mouse                          
   
    mov ax,03             ;Obtiene la posicion del mouse
    int 33h               ;INT mouse
    
    mov ax,cx             ;Guarda los valores en pixeles de las filas 
    div divisor           ;Se divide entre 8
    mov posx,al           ;La posicion en la variable
    
    mov ax,dx             ;Guarda los valores en pixeles de las columnas   
    div divisor           ;Se divide entre 8
    mov posy,al           ;La posicion en la variable 

    ret
endp

;______________________________________________________________________________               

SALIR:;Para finalizar el programa
        
limpiar servicio          ;Limpia la pantalla  
colores 14                ;color amarillo

gotoxy 17h,9h             ;Va a la posicion
imprime msjBye            ;Imprime el msjBye

mov  ax, 4C00h
int  21h

CODE ENDS
END START
;______________________________________________________________________________  