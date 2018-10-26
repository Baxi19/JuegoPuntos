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
        preguntaNivel db 13,10,'Digite el nivel ("1" o "2" o "3")','$'
        
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
        
        AuxPosicion db "Por favor opima el click derecho donde quiere iniciar con su jugador "
        
        ;signos para imprecion
        SinSigno db " ","$"
        Signo db "","$" 
        
        
        ;Variables de msjs del programa
        recargando db "Recargando el juego...!","$"        
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
START:
  
    mov  ax,datos
    mov  ds,ax
    jmp  continuar       ;Saltamos a la etiqueta CONTINUAR

;______________________________________________________________________________

CONTINUAR: 
    limpiar servicio      ;Limpia la pantalla
    colores 1111B         ;Color Blanco 
    imprime Instrucciones ;Imprime Instrucciones 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    int 21h               ;Interfaz                                             
    
    jmp seleccionJugadores;Nos movemos de pantalla  
 
;______________________________________________________________________________     
SELECCIONJUGADORES:
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime CantidadJugadores;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al                    ;Se mueve el valor recibido del teclado
    mov si,0                     ;a una variable para ser comparado con las posibles entradas
    mov numeroJugadores[si], bl
    
    ;imprime espacio       ;Espacio Vacio  
    
;______________________________________________________________________________
 ;VERIFICARJUGADORES:
    
        
    cmp numeroJugadores,32h ;Comparamos con 2 
    je  DosJugadores
    
    cmp numeroJugadores,33h ;Comparamos con 3
    je  TresJugadores
    
    cmp numeroJugadores,34h ;Comparamos con 4    
    je  CuatroJugadores
    
    call sonido             ;se produce un sonido
    jmp seleccionJugadores  ;Tecla erronea llamamos la funcion 


;______________________________________________________________________________
DOSJUGADORES:
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
    
    jmp cicloJuego2
;______________________________________________________________________________
TRESJUGADORES:
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 0100B         ;Color rojo
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
                                              
    jmp cicloJuego3

;______________________________________________________________________________
CUATROJUGADORES:
    
    ;Jugador #1
    GOTOXY 0h,0h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 0100B         ;Color rojo 
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
    
    ;Jugador #4
    GOTOXY 0h,0h          ;Toma la posicion    
    colores 1001B         ;Color azul 
    imprime pregunta4      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player4[si], bl
    imprime espacio       ;Espacio Vacio       
    
    jmp cicloJuego4
;______________________________________________________________________________
CICLOJUEGO2:
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al                    ;Se mueve el valor recibido del teclado
    mov si,0                     ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    
    jmp MODOVIDEO2         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO2:

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris
    call Menu2             ;Imprime el menu
    
    jmp game2              ;Saltamos de etiqueta    
    
;______________________________________________________________________________

GAME2:           
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je verificarPosicion  ;Si es igual Saltamos de etiqueta    
    
    ;cmp bx,2
    ;je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
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
                  
   jmp game2     
;______________________________________________________________________________ 

CICLOJUEGO3:
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al                    ;Se mueve el valor recibido del teclado
    mov si,0                     ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    
    jmp MODOVIDEO3         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO3:

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris
    call Menu             ;Imprime el menu
    
    jmp game3              ;Saltamos de etiqueta    
    
;______________________________________________________________________________

GAME3:           
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je verificarPosicion  ;Si es igual Saltamos de etiqueta    
    
    ;cmp bx,2
    ;je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
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

CICLOJUEGO4:
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al                    ;Se mueve el valor recibido del teclado
    mov si,0                     ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    
    jmp MODOVIDEO4         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO4:

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris
    call Menu             ;Imprime el menu
    
    jmp game4              ;Saltamos de etiqueta    
    
;______________________________________________________________________________

GAME4:           
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    ;je verificarPosicion  ;Si es igual Saltamos de etiqueta    
    
    ;cmp bx,2
    ;je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
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
                  
   jmp game4            
                
                
;______________________________________________________________________________
INFORENDIDO1: 

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
    imprime puntos2         ;puntos obtenidos 
    
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    jmp resetapp

;______________________________________________________________________________
INFORENDIDO2:
    
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria1 ;Imprime Pantalla para cantidad de jugadores 
    
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
     
    
    jmp resetapp
;______________________________________________________________________________
RENDIRSE:
    cmp jugadorActual, 49h 
    je infoRendido1

    cmp jugadorActual, 50h 
    je infoRendido2   
    
     
    ret
;______________________________________________________________________________
RESETAPP:                 ;Reinicia el juego         
    
    limpiar servicio      ;Limpia la pantalla  
    colores 14            ;Color amarillo
    call obtenerposicion
    gotoxy 00h,00h        ;Busca la posicion
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
     
    mov jugadorActual, 49h ; establecemos el primer jugador
    
    colores 7             ;Color gris
    jmp start             ;Saltamos a la etiqueta

;______________________________________________________________________________

INFO1:                            
    gotoxy 00h,17h
    imprime jugador       ;jugador 
    
    gotoxy 09h,17h
    imprime player1       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;puntos                       
                            
    gotoxy 28h,17h
    imprime puntos1         ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________

INFO2:                            
    gotoxy 00h,17h
    imprime jugador       ;jugador 
    
    gotoxy 09h,17h
    imprime player2       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;puntos                       
                            
    gotoxy 28h,17h
    imprime puntos2         ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________

INFO3:                            
    gotoxy 00h,17h
    imprime jugador       ;jugador 
    
    gotoxy 09h,17h
    imprime player3       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;puntos                       
                            
    gotoxy 28h,17h
    imprime puntos3         ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________
                            
INFO4:                            
    gotoxy 00h,17h
    imprime jugador       ;jugador 
    
    gotoxy 09h,17h
    imprime player4       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;puntos                       
                            
    gotoxy 28h,17h
    imprime puntos4         ;puntos obtenidos                        
                            
    ret                        

;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                            
;______________________________________________________________________________                           
; Area de Procesos Repetitivos para llamar como funciones
;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
;______________________________________________________________________________

SONIDO proc  :            ;Crea un sonido si la tecla es diferente a las que dice el menu
       
       mov ah,02h           ;servicio de teclado sin eco
       ;gotoxy 00h,00h     ;colocamos el cursor en la esquina superior izquierda
       mov dl,07h         ;Crea el sonido
       int 21h            ;INT teclado

       ;call obtenerposicion
       ;gotoxy 00h,00h     ;Vamos a la poscion
       
       endp               ;Cierre de proceso
    
;______________________________________________________________________________
 MENU proc near:           ;Proceso que imprime el menu
    
   
    colores 1101b                   
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
    cmp jugadorActual, 49h 
    je info1

    cmp jugadorActual, 50h 
    je info2

    cmp jugadorActual, 51h 
    je info3

    cmp jugadorActual, 52h 
    je info4
    
    ret              
endp 

;______________________________________________________________________________

MENU2 proc near:           ;Proceso que imprime el menu
    
   
    colores 1101b                   
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
    cmp jugadorActual, 49h 
    je info1

    cmp jugadorActual, 50h 
    je info2

    cmp jugadorActual, 51h 
    je info3

    cmp jugadorActual, 52h 
    je info4
    
    ret              
endp 


;______________________________________________________________________________                           

OBTENERPOSICION proc near:                           
   
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

SALIR:
        
limpiar servicio          ;Limpia la pantalla  
colores 14                ;color amarillo

gotoxy 17h,9h             ;Va a la posicion
imprime msjBye            ;Imprime el msjBye

mov  ax, 4C00h
int  21h

CODE ENDS
END START